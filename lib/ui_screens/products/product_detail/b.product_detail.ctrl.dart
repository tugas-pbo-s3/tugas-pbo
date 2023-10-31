part of '_index.dart';

class ProductDetailCtrl {
  init() => logxx.i(ProductDetailCtrl, '...');

  action() => _dt.rxInt.setState((s) => s + 1);
}
