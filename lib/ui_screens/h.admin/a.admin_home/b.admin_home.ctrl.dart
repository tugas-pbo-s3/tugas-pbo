part of '_index.dart';

class AdminHomeCtrl {
  init() {
    logxx.i(AdminHomeCtrl, '...');
    // Serv.women.readAllProducts();
    // Serv.women.initProducts();
    // Serv.women.addToList(_dt.rxWomenShoesLoader.st);
    // Serv.man.initProducts();
    // logx.w(_dt.rxWomenShoes.st.length.toString());
  }

  action() => _dt.rxInt.setState((s) => s + 1);

  signOut() {
    Serv.auth.signOut();
  }

  String getTitleByIndex(int index) {
    switch (index) {
      case 0:
        return 'Beranda';
      case 1:
        return 'Kelom';
      case 2:
        return 'Kebaya';
      case 3:
        return 'Rok';
      case 4:
        return 'Kategori';
      // case 5:
      //   return 'Profile';
      // case 6:
      //   return 'Settings';
      default:
        return 'Halaman tidak ditemukan';
    }
  }
}
