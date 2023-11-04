part of '_index.dart';

class AdminProductInputCtrl {
  init() => logxx.i(AdminProductInputCtrl, '...');

  action() => _dt.rxInt.setState((s) => s + 1);
}
