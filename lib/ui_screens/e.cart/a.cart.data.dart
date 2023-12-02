part of '_index.dart';

class CartData {
  final rxTitle = 'Keranjang'.inj();

  final rxInt = 0.inj();
  // final rxCart = _pvProduct.rxCart;
  final rxCart = _pvCart.rxCart;
  final rxCarted = _pvCart.rxCart.st.listCartedShoes;
  final rxProductList = _pv.rxProductList;
  final rxProductFuture = _pv.rxProductFuture;
  final rxSelectedId = _pv.rxSelectedId;

  final rxUser = Prov.auth.st.rxUser;
}
