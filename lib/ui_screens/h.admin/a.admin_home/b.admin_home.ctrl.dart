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
        return 'Home';
      case 1:
        return 'Women\'s Shoes';
      case 2:
        return 'Men\'s Shoes';
      case 3:
        return 'Kids\'s Shoes';
      case 4:
        return 'Category';
      // case 5:
      //   return 'Profile';
      // case 6:
      //   return 'Settings';
      default:
        return 'Not found page';
    }
  }
}
