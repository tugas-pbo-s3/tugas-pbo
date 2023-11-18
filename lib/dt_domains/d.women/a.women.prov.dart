part of '_index.dart';

class WomenProv {
  final colId = 'shoes';
  final colId2 = 'women-shoes';
  final docId1 = 'w-shoes';
  final limit = 3;
  final rxIsEnd = false.inj();

  final rxIndex = RM.inject<int>(
    () => 0,
    persist: () => PersistState(
      key: 'rxIndex',
      throttleDelay: 500,
      shouldRecreateTheState: false,
    ),
  );

  final rxProductList = RM.inject<List<WomenShoes>>(() => []);

  final rxSelectedId = RM.inject<String>(() => '');

  final rxLoadMore = RM.injectFuture<List<WomenShoes>>(
    () => Future.value([]),
    sideEffects: SideEffects(
      initState: () => Serv.women.initProducts(),
      onSetState: (snap) {
        if (snap.hasData) {
          final moreProduct = snap.state.whereType<WomenShoes>().toList();
          Serv.women.addToList(moreProduct);
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
