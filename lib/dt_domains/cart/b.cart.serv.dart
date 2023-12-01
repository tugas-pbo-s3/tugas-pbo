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

  addToCart(CartedProduct cartedShoes) {
    _pv.rxCart.st = _pv.rxCart.st.copyWith(
      listCartedShoes: [..._pv.rxCart.st.listCartedShoes]..insert(0, cartedShoes),
    );
  }

  updateToCart(CartedProduct cartedShoes, int index) {
    _pv.rxCart.st = _pv.rxCart.st.copyWith(
      listCartedShoes: [..._pv.rxCart.st.listCartedShoes]
        ..removeAt(index)
        ..insert(index, cartedShoes),
    );
  }

  removeCart({required String id}) {
    _pv.rxCart.st = _pv.rxCart.st.copyWith(
        listCartedShoes: [..._pv.rxCart.st.listCartedShoes]..removeWhere((element) => element.cartedId == id));
  }

  deleteAllProducts() {
    for (var product in _pv.rxCart.st.listCartedShoes) {
      removeCart(id: product.cartedId);
      logx.e(product.toString());
      nav.back();
      nav.back();
    }
  }
}
