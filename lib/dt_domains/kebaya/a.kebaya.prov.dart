part of '_index.dart';

class KebayaProv {
  final colId = 'shoes';
  final colId2 = 'man-shoes';
  final docId1 = 'm-shoes';
  final limit = 10;
  final rxIsEnd = false.inj();

  final rxProductList = RM.inject<List<Kebaya>>(
    () => [],
    autoDisposeWhenNotUsed: false,
  );

  final rxSelectedId = RM.inject<String>(() => '');

  final rxLoadMore = RM.injectFuture<List<Kebaya>>(
    () => Future.value([]),
    autoDisposeWhenNotUsed: false,
    sideEffects: SideEffects(
      initState: () => _sv.initProducts(),
      onSetState: (snap) {
        if (snap.hasData) {
          final moreProduct = snap.state.whereType<Kebaya>().toList();
          _sv.addToList(moreProduct);
        }
      },
    ),
  );

  final rxLoadMoreWithoutLimit = RM.injectFuture<List<Kebaya>>(
    () => Future.value([]),
    sideEffects: SideEffects(
      initState: () => _sv.initProductsWithoutLimit(),
      onSetState: (snap) {
        if (snap.hasData) {
          final moreProduct = snap.state.whereType<Kebaya>().toList();
          _sv.addToListWithoutLimit(moreProduct);
        }
      },
    ),
  );

  // * prov detail

  final rxProductFuture = RM.injectFuture<Kebaya?>(
    () => Future.value(null),
    sideEffects: SideEffects(
      initState: () => _sv.readProduct(),
    ),
  );
}
