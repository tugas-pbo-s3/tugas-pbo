part of '_index.dart';

class ManDetailCtrl {
  init() => logxx.i(ManDetailCtrl, '...');

  action() => _dt.rxInt.setState((s) => s + 1);

  signOut() => Serv.auth.signOut();

  addToCart() {
    MenShoes product = MenShoes(
      name: _dt.rxProductFuture.st!.name,
      price: _dt.rxProductFuture.st!.price,
      quantity: _dt.rxProductFuture.st!.quantity,
      productId: _pv.rxProductFuture.st!.productId,
      imageUrl: _pv.rxProductFuture.st!.imageUrl,
      createdAt: _pv.rxProductFuture.st!.createdAt,
      category: _pv.rxProductFuture.st!.category,
      colors: _pv.rxProductFuture.st!.colors,
      sizes: _pv.rxProductFuture.st!.sizes,
      merk: _pv.rxProductFuture.st!.merk,
      description: _pv.rxProductFuture.st!.description,
    );

    if (cekCartindex() < 0) {
      _sv.addToCart(
        CartedShoes(
          shoes: product,
          qty: _dt.rxQty.st,
          size: _dt.rxSize.st,
          color: _dt.rxColor.st,
        ),
      );
    } else {
      _sv.updateToCart(
        CartedShoes(
          shoes: product,
          qty: _dt.rxQty.st,
          size: _dt.rxSize.st,
          color: _dt.rxColor.st,
        ),
        cekCartindex(),
      );
    }

    nav.back();
    logx.i('addtocart');
  }

  // * --------------------------

// *   menandai di state mengenai size &  color yang dipilih

  void selectSize(int size) {
    _dt.rxSize.st = size;
    _ct.setQty();
  }

  void selectColor(String color) {
    _dt.rxColor.st = color;
    _ct.setQty();
  }

// * ---------------------------

  void setQty() {
    final index = cekCartindex();
    if (index > -1) {
      final item = _dt.rxCart.st.listCartedShoes[index];
      _dt.rxQty.st = item.qty;
    } else {
      _dt.rxQty.refresh();
    }
  }

// * cek index setiap cart mengidentifikasi adanya kesamaan dari cart itu

  int cekCartindex() {
    final prodX = CartedShoes(
      shoes: _dt.rxProductFuture.st!,
      color: _dt.rxColor.st,
      size: _dt.rxSize.st,
    );
    final index = _dt.rxCart.st.listCartedShoes.indexWhere((el) {
      final x = el.shoes.productId == prodX.shoes.productId;
      final y = el.color == prodX.color;
      final z = el.size == prodX.size;
      return x && y && z;
    });
    return index;
  }
}
