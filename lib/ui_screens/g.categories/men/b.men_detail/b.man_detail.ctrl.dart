part of '_index.dart';

class ManDetailCtrl {
  init() => logxx.i(ManDetailCtrl, '...');

  action() => _dt.rxInt.setState((s) => s + 1);
}
