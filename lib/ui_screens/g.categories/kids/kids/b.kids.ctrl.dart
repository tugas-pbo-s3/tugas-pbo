part of '_index.dart';

class KidsCtrl {
  init() => logxx.i(KidsCtrl, '...');

  action() => _dt.rxInt.setState((s) => s + 1);

  readAllProducts() {
    _sv.readAllProducts();
  }

  addToList(List<KidsShoes> moreProduct) {
    _sv.addToList(moreProduct);
  }

  selectProduct(String id) {
    _sv.setSelectedId(id);
    nav.to(Routes.manDetail);
  }
}