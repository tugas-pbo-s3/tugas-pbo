part of '_index.dart';

class CartServ {
  addToCart(CartedShoes cartedShoes) {
    _pv.rxCart.st.listCartedShoes = [..._pv.rxCart.st.listCartedShoes]..insert(0, cartedShoes);
  }

  updateToCart(CartedShoes cartedShoes, int index) {
    _pv.rxCart.st.listCartedShoes = [..._pv.rxCart.st.listCartedShoes]
      ..removeAt(index)
      ..insert(index, cartedShoes);
  }
}
