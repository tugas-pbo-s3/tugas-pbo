part of '_index.dart';

class KidsDetailData {
  final rxTitle = 'KidsDetail'.inj();

  final rxInt = 0.inj();

  final rxProductFuture = _pv.rxProductFuture;

  final rxProductList = _pv.rxProductList;

  final rxSelectedId = _pv.rxSelectedId;

  final rxCart = _pvCart.rxCart;

  final rxQty = RM.inject(
    () => 1,
  );

  final rxSize = RM.inject<int>(
    () => _dt.rxProductFuture.st?.sizes.first ?? 0,
  );

  final rxColor = RM.inject<String>(
    () => _dt.rxProductFuture.st?.colors.first ?? 'empty color option',
  );
}
