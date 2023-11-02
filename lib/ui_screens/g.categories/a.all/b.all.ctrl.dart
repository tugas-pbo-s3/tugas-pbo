part of '_index.dart';

class AllCtrl {
  init() => logxx.i(AllCtrl, '...');

  action() => _dt.rxInt.setState((s) => s + 1);
}
