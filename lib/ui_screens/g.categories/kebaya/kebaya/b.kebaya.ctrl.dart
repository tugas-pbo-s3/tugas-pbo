part of '_index.dart';

class KebayaCtrl {
  init() => logxx.i(KebayaCtrl, '...');

  action() => _dt.rxInt.setState((s) => s + 1);

  readAllProducts() {
    _sv.readAllProducts();
  }

  addToList(List<Kebaya> moreProduct) {
    _sv.addToList(moreProduct);
  }

  selectProduct(String id) {
    _sv.setSelectedId(id);
    logx.e('selected id: ${_dt.rxSelectedId.st}');
    nav.to(Routes.kebayaDetail);
  }
}
