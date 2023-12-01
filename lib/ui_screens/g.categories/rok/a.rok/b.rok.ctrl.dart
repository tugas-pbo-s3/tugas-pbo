part of '_index.dart';

class RokCtrl {
  init() => logxx.i(RokCtrl, '...');

  action() => _dt.rxInt.setState((s) => s + 1);

  readAllProducts() {
    _sv.readAllProducts();
  }

  addToList(List<Rok> moreProduct) {
    _sv.addToList(moreProduct);
  }

  selectProduct(String id) {
    _sv.setSelectedId(id);
    logx.e('selected id: ${_dt.rxSelectedId.st}');
    nav.to(Routes.rokDetail);
  }
}
