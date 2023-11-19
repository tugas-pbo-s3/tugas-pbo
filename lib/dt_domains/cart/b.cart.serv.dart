part of '_index.dart';

class CartServ {
  // addToCart(CartedShoes cartedShoes) {
  //   _pv.rxCart.st.listCartedShoes = [..._pv.rxCart.st.listCartedShoes]..insert(0, cartedShoes);
  // }

  // updateToCart(CartedShoes cartedShoes, int index) {
  //   _pv.rxCart.st.listCartedShoes = [..._pv.rxCart.st.listCartedShoes]
  //     ..removeAt(index)
  //     ..insert(index, cartedShoes);
  // }

  addToCart(CartedShoes cartedShoes) {
    _pv.rxCart.st = _pv.rxCart.st.copyWith(
      listCartedShoes: [..._pv.rxCart.st.listCartedShoes]..insert(0, cartedShoes),
    );
  }

  updateToCart(CartedShoes cartedShoes, int index) {
    _pv.rxCart.st = _pv.rxCart.st.copyWith(
      listCartedShoes: [..._pv.rxCart.st.listCartedShoes]
        ..removeAt(index)
        ..insert(index, cartedShoes),
    );
  }

  removeCart(String id) {
    _pv.rxCart.st = _pv.rxCart.st.copyWith(
        listCartedShoes: [..._pv.rxCart.st.listCartedShoes]..removeWhere((element) => element.shoes.productId == id));
  }

  // removeCart(String id) {
  //   _pv.rxCart.st.listCartedShoes = [..._pv.rxCart.st.listCartedShoes]
  //     ..removeWhere((element) => element.shoes.productId == id);
  // }

  //   removeById(String id) {
  //   _pv.rxCart.st.listCartedShoes = [..._pv.rxCart.st.listCartedShoes]..removeWhere((element) => element.id == id);
  // }
}
