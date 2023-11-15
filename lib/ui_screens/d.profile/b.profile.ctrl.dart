part of '_index.dart';

class ProfileCtrl {
  init() {
    logxx.i(ProfileCtrl, '...');
  }

  action() => _dt.rxInt.setState((s) => s + 1);
}
