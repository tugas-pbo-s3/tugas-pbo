part of '_index.dart';

class KelomCtrl {
  init() => logxx.i(KelomCtrl, '...');

  action() => _dt.rxInt.setState((s) => s + 1);

  readAllProducts() {
    _sv.readAllProducts();
  }

  addToList(List<Kelom> moreProduct) {
    _sv.addToList(moreProduct);
  }

  selectProduct(String id) {
    _sv.setSelectedId(id);
    nav.to(Routes.kelomDetail.replaceAll(':id', id));
  }
}
