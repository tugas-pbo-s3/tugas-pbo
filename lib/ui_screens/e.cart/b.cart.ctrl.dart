part of '_index.dart';

class CartCtrl {
  init() => logxx.i(CartCtrl, '...');

  action() => _dt.rxInt.setState((s) => s + 1);

  deleteCart() async {
    await _sv.removeCart(id: _dt.rxCart.st.cartId);
    Fun.showOverlayLoading();
    await Future.delayed(400.milliseconds);
    RM.navigate.back();
    RM.navigate.back();
  }

  deleteAllCart() {
    _sv.deleteAllProducts();
  }
}
