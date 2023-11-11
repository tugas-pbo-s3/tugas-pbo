part of '_index.dart';

class WomenServ {
  init() => logxx.i(WomenServ, '.....');

  readAllProducts() {
    _pv.rxLoadMore.stateAsync = _rp.readAllProducts(
      _pv.rxProductList.st.isNotEmpty ? _pv.rxProductList.st.last.createdAt : '9999-99-99 99:99:99.999',
    );
    logx.e('iniwomenn');
  }

  addToCart(WomenShoes product) {
    _rp.addToCart(product);
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
}
