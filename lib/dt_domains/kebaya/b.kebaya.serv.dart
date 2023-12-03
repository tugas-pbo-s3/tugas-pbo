part of '_index.dart';

class KebayaServ {
  init() => logxx.i(KebayaServ, '.....');

  readAllProducts() {
    _pv.rxLoadMore.stateAsync = _rp.readAllProducts(
      _pv.rxProductList.st.isNotEmpty ? _pv.rxProductList.st.last.createdAt : '9999-99-99 99:99:99.999',
    );
    logx.e('ini menn');
  }

  addToList(List<Kebaya> moreProduct) {
    _pv.rxProductList.st = [..._pv.rxProductList.st, ...moreProduct];
    if (moreProduct.length < _pv.limit) {
      _pv.rxIsEnd.st = true;
    }
  }

  initProductsWithoutLimit() {
    _pv.rxIsEnd.refresh();
    _pv.rxProductList.refresh();
    _pv.rxSelectedId.refresh();

    readAllProductsWithoutLimit();
  }

  readAllProductsWithoutLimit() {
    _pv.rxLoadMoreWithoutLimit.stateAsync = _rp.readAllProductsWithoutLimit(
      _pv.rxProductList.st.isNotEmpty ? _pv.rxProductList.st.last.createdAt : '9999-99-99 99:99:99.999',
    );
  }

  addToListWithoutLimit(List<Kebaya> moreProduct) {
    _pv.rxProductList.st = [..._pv.rxProductList.st, ...moreProduct];
  }

// * cart

  addToCart(CartedProduct cartedShoes) {
    _svCart.addToCart(cartedShoes);
  }

  updateToCart(CartedProduct cartedShoes, int index) {
    _svCart.updateToCart(cartedShoes, index);
  }
// *--------------------------

  // addToCart(CartedShoes cartedShoes) {
  //   _svCart.addToCart(cartedShoes);
  // }

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

  Future<void> createProduct(Kebaya product) {
    return _rp.createProduct(product);
  }

  // Future<void> updateProduct(Kebaya menShoes, Map<String, String>? images) async {
  //   return _rp.updateProduct(menShoes, images);
  // }

  Future<void> updateProduct(Kebaya product) async {
    final productFinal = await _rp.updateProduct(product);
    _pv.rxProductFuture.st = productFinal;
  }

  Future<void> uploadImages(Map<String, String> images) {
    return _rp.uploadImages(images);
  }

  updateOneOfProductList(Kebaya m) {
    _pv.rxProductList.setState(
      (s) {
        final index = s.indexWhere((element) => element.productId == _pv.rxSelectedId.st);
        return s[index] = m;
      },
    );
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
