part of '_index.dart';

class AdminHomeCtrl {
  init() => logxx.i(AdminHomeCtrl, '...');

  action() => _dt.rxInt.setState((s) => s + 1);

  signOut() {
    Serv.auth.signOut();
  }

  String getTitleByIndex(int index) {
    switch (index) {
      case 0:
        return 'Home';
      case 1:
        return 'Product';
      case 2:
        return 'ProductInput';
      case 3:
        return 'Category';
      case 4:
        return 'Custom iconWidget';
      // case 5:
      //   return 'Profile';
      // case 6:
      //   return 'Settings';
      default:
        return 'Not found page';
    }
  }
}
