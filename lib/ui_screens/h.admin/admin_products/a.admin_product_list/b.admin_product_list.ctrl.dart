part of '_index.dart';

class AdminProductListCtrl {
  init() => logxx.i(AdminProductListCtrl, '...');

  action() => _dt.rxInt.setState((s) => s + 1);

  signOut() {
    Serv.auth.signOut();
  }

  //   Future<void> refresh() async {
  //   Serv.product.refreshProducts();
  // }
  Future<void> loadMore() async {
    Serv.product.readProducts();
  }

  select(String id) {
    Serv.product.setSelectedId(id);
    nav.to(Routes.productDetail);
  }
}
