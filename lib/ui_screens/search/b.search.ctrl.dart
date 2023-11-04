part of '_index.dart';

class SearchCtrl {
  init() => logxx.i(SearchCtrl, '...');

  action() => _dt.rxInt.setState((s) => s + 1);
}
