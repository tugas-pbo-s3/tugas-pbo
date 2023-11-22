part of '_index.dart';

class CartCtrl {
  init() => logxx.i(CartCtrl, '...');

  action() => _dt.rxInt.setState((s) => s + 1);

  deleteCart() {
    _sv.removeCart(id: _dt.rxCart.st.cartId);

    RM.navigate.back();
    RM.navigate.back();
  }

  deleteAllCart() {
    _sv.deleteAllProducts();
  }

  signOut() => Serv.auth.signOut();
}
