part of '_index.dart';

class WomanCtrl {
  init() => logxx.i(WomanCtrl, '...');

  action() => _dt.rxInt.setState((s) => s + 1);
}
