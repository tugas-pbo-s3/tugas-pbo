part of '_index.dart';

class ProductListCtrl {
  init() => logxx.i(ProductListCtrl, '...');

  action() => _dt.rxInt.setState((s) => s + 1);

  signOut() => Serv.auth.signOut();

  delete() => Serv.auth.deleteAccount();
}