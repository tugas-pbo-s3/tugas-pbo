part of '_index.dart';

class RokServ {
  init() => logxx.i(KebayaServ, '.....');

  readAllProducts() {
    _pv.rxLoadMore.stateAsync = _rp.readAllProducts(
      _pv.rxProductList.st.isNotEmpty ? _pv.rxProductList.st.last.createdAt : '9999-99-99 99:99:99.999',
    );
    logx.e('ini kids');
  }

  addToList(List<Rok> moreProduct) {
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

  addToListWithoutLimit(List<Rok> moreProduct) {
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

  Future<void> createProduct(Rok kidsShoes) {
    return _rp.createProduct(kidsShoes);
  }

  Future<void> updateProduct(Rok kidsShoes, Map<String, String>? images) async {
    return _rp.updateProduct(kidsShoes, images);
  }

  Future<void> uploadImages(Map<String, String> images) {
    return _rp.uploadImages(images);
  }

  updateOneOfProductList(Rok k) {
    _pv.rxProductList.setState(
      (s) {
        final index = s.indexWhere((element) => element.productId == _pv.rxSelectedId.st);
        return s[index] = k;
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
