part of '_index.dart';

class LoginCtrl {
  init() => logxx.i(LoginCtrl, '...');

  action() => _dt.rxInt.setState((s) => s + 1);
}
