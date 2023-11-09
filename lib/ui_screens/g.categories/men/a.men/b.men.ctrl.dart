part of '_index.dart';

class MenCtrl {
  init() => logxx.i(MenCtrl, '...');

  action() => _dt.rxInt.setState((s) => s + 1);

  readAllProducts() {
    _sv.readAllProducts();
  }

  addToList(List<MenShoes> moreProduct) {
    _sv.addToList(moreProduct);
  }

  selectProduct(String id) {
    _sv.setSelectedId(id);
    nav.to(Routes.manDetail);
  }
}
