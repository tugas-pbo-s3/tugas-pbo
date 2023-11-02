part of '_index.dart';

class ManCtrl {
  init() => logxx.i(ManCtrl, '...');

  action() => _dt.rxInt.setState((s) => s + 1);
}
