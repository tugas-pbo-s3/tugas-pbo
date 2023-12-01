part of '_index.dart';

class KelomServ {
  init() => logxx.i(KelomServ, '.....');

  readAllProducts() {
    _pv.rxLoadMore.stateAsync = _rp.readAllProducts(
      _pv.rxProductList.st.isNotEmpty ? _pv.rxProductList.st.last.createdAt : '9999-99-99 99:99:99.999',
    );
    logx.e('ini womenn');
  }

  addToList(List<Kelom> moreProduct) {
    _pv.rxProductList.st = [..._pv.rxProductList.st, ...moreProduct];
    if (moreProduct.length < _pv.limit) {
      _pv.rxIsEnd.st = true;
    }
  }

  readAllProductsWithoutLimit() {
    _pv.rxLoadMoreWithoutLimit.stateAsync = _rp.readAllProductsWithoutLimit(
      _pv.rxProductList.st.isNotEmpty ? _pv.rxProductList.st.last.createdAt : '9999-99-99 99:99:99.999',
    );
  }

  addToListWithoutLimit(List<Kelom> moreProduct) {
    _pv.rxProductList.st = [..._pv.rxProductList.st, ...moreProduct];
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

  initProductsWithoutLimit() {
    _pv.rxIsEnd.refresh();
    // _pv.rxProductList.refresh();
    _pv.rxSelectedId.refresh();

    readAllProductsWithoutLimit();
  }

  // * serv read detail
  readProduct() {
    _pv.rxProductFuture.stateAsync = _rp.readProduct();
  }

  Future<void> createProduct(Kelom product) {
    return _rp.createProduct(product);
  }

  Future<void> updateProduct(Kelom womenShoes, Map<String, String>? images) async {
    return _rp.updateProduct(womenShoes, images);
  }

  Future<void> uploadImages(Map<String, String> images) {
    return _rp.uploadImages(images);
  }

  updateOneOfProductList(Kelom w) {
    _pv.rxProductList.setState(
      (s) {
        final index = s.indexWhere((element) => element.productId == _pv.rxSelectedId.st);
        return s[index] = w;
      },
    );
  }

  // * cart

  addToCart(CartedProduct cartedShoes) {
    _svCart.addToCart(cartedShoes);
  }

  updateToCart(CartedProduct cartedShoes, int index) {
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
