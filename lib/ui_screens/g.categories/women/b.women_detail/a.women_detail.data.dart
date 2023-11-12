part of '_index.dart';

class WomenDetailData {
  final rxTitle = 'WomenDetail'.inj();

  final rxInt = 0.inj();

  final rxProductFuture = _pv.rxProductFuture;

  final rxProductList = _pv.rxProductList;

  final rxSelectedId = _pv.rxSelectedId;

  final rxAngka = RM.inject(
    () => 1,
  );
}
