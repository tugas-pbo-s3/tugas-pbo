part of '_index.dart';

class KidsCtrl {
  init() => logxx.i(KidsCtrl, '...');

  action() => _dt.rxInt.setState((s) => s + 1);
}
