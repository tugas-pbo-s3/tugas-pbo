part of '_index.dart';

class KidsDetailData {
  final rxTitle = 'KidsDetail'.inj();

  final rxInt = 0.inj();

  final rxProductFuture = _pv.rxProductFuture;

  final rxProductList = _pv.rxProductList;

  final rxSelectedId = _pv.rxSelectedId;

  final rxAngka = RM.inject(
    () => 1,
  );
}
