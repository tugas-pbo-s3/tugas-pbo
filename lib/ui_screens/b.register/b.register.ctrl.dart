part of '_index.dart';

class RegisterCtrl {
  init() => logxx.i(RegisterCtrl, '...');

  action() => _dt.rxInt.setState((s) => s + 1);

  submit() => _dt.rxForm.submit();
}
