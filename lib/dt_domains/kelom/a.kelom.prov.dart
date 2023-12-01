part of '_index.dart';

class KelomProv {
  final colId = 'shoes';
  final colId2 = 'women-shoes';
  final docId1 = 'w-shoes';
  final limit = 10;
  final rxIsEnd = false.inj();

  final rxIsLimit = RM.inject(
    () => true,
  );

  final rxProductList = RM.inject<List<Kelom>>(
    () => [],
    autoDisposeWhenNotUsed: false,
  );

  final rxSelectedId = RM.inject<String>(() => '');

  final rxLoadMore = RM.injectFuture<List<Kelom>>(
    () => Future.value([]),
    autoDisposeWhenNotUsed: false,
    sideEffects: SideEffects(
      initState: () => _sv.initProducts(),
      onSetState: (snap) {
        if (snap.hasData) {
          final moreProduct = snap.state.whereType<Kelom>().toList();
          _sv.addToList(moreProduct);
        }
      },
    ),
  );
  final rxLoadMoreWithoutLimit = RM.injectFuture<List<Kelom>>(
    () => Future.value([]),
    sideEffects: SideEffects(
      initState: () => _sv.initProductsWithoutLimit(),
      onSetState: (snap) {
        if (snap.hasData) {
          final moreProduct = snap.state.whereType<Kelom>().toList();
          _sv.addToListWithoutLimit(moreProduct);
        }
      },
    ),
  );

  // * prov detail
  final rxProductFuture = RM.injectFuture<Kelom?>(
    () => Future.value(null),
    sideEffects: SideEffects(
      initState: () => _sv.readProduct(),
    ),
  );
}
