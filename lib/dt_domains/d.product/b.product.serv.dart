part of '_index.dart';

class ProductServ {
  init() => logxx.i(ProductServ, '.....');

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

  Future<void> uploadImages(Map<String, String> images) {
    return Repo.product.st.uploadImages(images);
  }

  addToCart(CartedShoes cartedItems) {
    _pv.rxCart.st.listCartedShoes = [..._pv.rxCart.st.listCartedShoes]..insert(0, cartedItems);
  }
}
