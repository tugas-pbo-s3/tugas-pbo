part of '_index.dart';

class RokProv {
  final colId = 'products';
  final colId2 = 'rok-geulis';
  final docId1 = 'rok';
  final limit = 10;
  final rxIsEnd = false.inj();

  final rxProductList = RM.inject<List<Rok>>(
    () => [],
    autoDisposeWhenNotUsed: false,
  );

  final rxSelectedId = RM.inject<String>(() => '', autoDisposeWhenNotUsed: false);

  final rxLoadMore = RM.injectFuture<List<Rok>>(
    () => Future.value([]),
    autoDisposeWhenNotUsed: false,
    sideEffects: SideEffects(
      initState: () => _sv.initProducts(),
      onSetState: (snap) {
        if (snap.hasData) {
          final moreProduct = snap.state.whereType<Rok>().toList();
          _sv.addToList(moreProduct);
        }
      },
    ),
  );

  final rxLoadMoreWithoutLimit = RM.injectFuture<List<Rok>>(
    () => Future.value([]),
    sideEffects: SideEffects(
      initState: () => _sv.initProductsWithoutLimit(),
      onSetState: (snap) {
        if (snap.hasData) {
          final moreProduct = snap.state.whereType<Rok>().toList();
          _sv.addToListWithoutLimit(moreProduct);
        }
      },
    ),
  );

  // * prov detail

  final rxProductFuture = RM.injectFuture<Rok?>(
    () => Future.value(null),
    sideEffects: SideEffects(
      initState: () => _sv.readProduct(),
    ),
  );
}
