part of '_index.dart';

class MenProv {
  final colId = 'shoes';
  final colId2 = 'man-shoes';
  final docId1 = 'm-shoes';
  final limit = 4;
  final rxIsEnd = false.inj();

  final rxProductList = RM.inject<List<MenShoes>>(
    () => [],
    autoDisposeWhenNotUsed: false,
  );

  final rxSelectedId = RM.inject<String>(() => '');

  final rxLoadMore = RM.injectFuture<List<MenShoes>>(
    () => Future.value([]),
    autoDisposeWhenNotUsed: false,
    sideEffects: SideEffects(
      initState: () => _sv.initProducts(),
      onSetState: (snap) {
        if (snap.hasData) {
          final moreProduct = snap.state.whereType<MenShoes>().toList();
          _sv.addToList(moreProduct);
        }
      },
    ),
  );

  final rxLoadMoreWithoutLimit = RM.injectFuture<List<MenShoes>>(
    () => Future.value([]),
    sideEffects: SideEffects(
      initState: () => _sv.initProductsWithoutLimit(),
      onSetState: (snap) {
        if (snap.hasData) {
          final moreProduct = snap.state.whereType<MenShoes>().toList();
          _sv.addToListWithoutLimit(moreProduct);
        }
      },
    ),
  );

  // * prov detail

  final rxProductFuture = RM.injectFuture<MenShoes?>(
    () => Future.value(null),
    sideEffects: SideEffects(
      initState: () => _sv.readProduct(),
    ),
  );
}
