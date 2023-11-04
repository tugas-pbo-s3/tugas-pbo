part of '_index.dart';

class AdminProductEditCtrl {
  init() => logxx.i(AdminProductEditCtrl, '...');

  action() => _dt.rxInt.setState((s) => s + 1);
}
