part of '_index.dart';

class ProductInputCtrl {
  init() => logxx.i(ProductInputCtrl, '...');

  action() => _dt.rxInt.setState((s) => s + 1);
}
