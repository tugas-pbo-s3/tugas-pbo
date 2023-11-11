part of '_index.dart';

class CartData {
  final rxTitle = 'Cart'.inj();

  final rxInt = 0.inj();
  final rxCartList = _pv.rxCartList;
  final rxProductList = _pv.rxProductList;
  final rxProductFuture = _pv.rxProductFuture;
  final rxSelectedId = _pv.rxSelectedId;
}
