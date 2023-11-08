part of '_index.dart';

class WomanCtrl {
  init() => logxx.i(WomanCtrl, '...');

  action() => _dt.rxInt.setState((s) => s + 1);

  readAllProducts() {
    _sv.readAllProducts();
  }

  addToList(List<WomenShoes> moreProduct) {
    _sv.addToList(moreProduct);
  }

  selectProduct(String id) {
    _sv.setSelectedId(id);
    nav.to(Routes.productDetail);
  }
}
