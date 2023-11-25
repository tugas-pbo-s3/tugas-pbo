part of '_index.dart';

class WomenProv {
  final colId = 'shoes';
  final colId2 = 'women-shoes';
  final docId1 = 'w-shoes';
  final limit = 4;
  final rxIsEnd = false.inj();

  final rxIsLimit = RM.inject(
    () => true,
  );

  final rxProductList = RM.inject<List<WomenShoes>>(
    () => [],
    // autoDisposeWhenNotUsed: false,
  );

  final rxSelectedId = RM.inject<String>(() => '');

  final rxLoadMore = RM.injectFuture<List<WomenShoes>>(
    () => Future.value([]),
    sideEffects: SideEffects(
      initState: () => _sv.initProducts(),
      onSetState: (snap) {
        if (snap.hasData) {
          final moreProduct = snap.state.whereType<WomenShoes>().toList();
          _sv.addToList(moreProduct);
        }
      },
    ),
  );
  final rxLoadMoreWithoutLimit = RM.injectFuture<List<WomenShoes>>(
    () => Future.value([]),
    sideEffects: SideEffects(
      initState: () => _sv.initProductsWithoutLimit(),
      onSetState: (snap) {
        if (snap.hasData) {
          final moreProduct = snap.state.whereType<WomenShoes>().toList();
          _sv.addToListWithoutLimit(moreProduct);
        }
      },
    ),
  );

  // * prov detail
  final rxProductFuture = RM.injectFuture<WomenShoes?>(
    () => Future.value(null),
    sideEffects: SideEffects(
      initState: () => _sv.readProduct(),
    ),
  );
}
