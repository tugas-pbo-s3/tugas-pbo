part of '_index.dart';

class CartCtrl {
  init() => logxx.i(CartCtrl, '...');

  action() => _dt.rxInt.setState((s) => s + 1);
}
