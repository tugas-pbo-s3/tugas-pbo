part of '_index.dart';

class AdminProductDetailCtrl {
  init() => logxx.i(AdminProductDetailCtrl, '...');

  action() => _dt.rxInt.setState((s) => s + 1);
}
