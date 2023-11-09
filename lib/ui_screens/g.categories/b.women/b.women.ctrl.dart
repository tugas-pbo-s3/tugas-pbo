part of '_index.dart';

class WomenCtrl {
  init() => logxx.i(WomenCtrl, '...');

  action() => _dt.rxInt.setState((s) => s + 1);

  readAllProducts() {
    _sv.readAllProducts();
  }

  addToList(List<WomenShoes> moreProduct) {
    _sv.addToList(moreProduct);
  }

  selectProduct(String id) {
    _sv.setSelectedId(id);
    nav.to(Routes.womenDetail);
  }
}
