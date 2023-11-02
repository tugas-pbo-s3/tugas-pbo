part of '_index.dart';

class ProductEditCtrl {
  init() => logxx.i(ProductEditCtrl, '...');

  action() => _dt.rxInt.setState((s) => s + 1);
}
