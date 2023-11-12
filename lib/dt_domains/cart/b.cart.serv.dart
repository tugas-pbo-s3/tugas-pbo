part of '_index.dart';

class CartServ {
  addToCart(Shoes items, int totalItems) {
    _pv.rxCart.st.listShoes = [..._pv.rxCart.st.listShoes]..insert(0, items);
    _pv.rxCart.st.listTotalItems = [..._pv.rxCart.st.listTotalItems]..insert(0, totalItems);
  }
}
