part of '_index.dart';

class HomeCtrl {
  init() => logxx.i(HomeCtrl, '...');

  action() => _dt.rxInt.setState((s) => s + 1);

  Widget directPage(double width) {
    if (_dt.rxUser.st?.email == 'admin@admin.com') {
      return const AdminProductListView();
    } else {
      if (width < 500) {
        return const HomePhone();
      } else {
        return const ProductListView();
      }
    }
  }
}
