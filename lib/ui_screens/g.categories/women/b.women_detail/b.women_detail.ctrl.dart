part of '_index.dart';

class WomenDetailCtrl {
  init() => logxx.i(WomenDetailCtrl, '...');

  action() => _dt.rxInt.setState((s) => s + 1);
}
