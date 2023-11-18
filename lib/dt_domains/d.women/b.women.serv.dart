part of '_index.dart';

class WomenServ {
  init() => logxx.i(WomenServ, '.....');

  readAllProducts() {
    _pv.rxLoadMore.stateAsync = Repo.product.st.readAllProducts(
      _pv.rxProductList.st.isNotEmpty ? _pv.rxProductList.st.last.createdAt : '9999-99-99 99:99:99.999',
    );
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
    return Repo.product.st.createProduct(product);
  }

  Future<void> updateProduct(WomenShoes womenShoes) async {
    return _rp.updateProduct(womenShoes);
  }

  Future<void> uploadImages(Map<String, String> images) {
    return Repo.product.st.uploadImages(images);
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
}
