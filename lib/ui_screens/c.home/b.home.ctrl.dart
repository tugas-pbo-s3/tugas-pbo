part of '_index.dart';

class HomeCtrl {
  init() => logxx.i(HomeCtrl, '...');

  action() => _dt.rxInt.setState((s) => s + 1);

  signOut() => Serv.auth.signOut();

  Widget directPage(double width) {
    if (_dt.rxUser.st?.email == 'admin@admin.com') {
      return const AdminHomeView();
    } else {
      if (width < 600) {
        return const HomePhone();
      } else {
        return const ProductListView();
      }
    }
  }
}
