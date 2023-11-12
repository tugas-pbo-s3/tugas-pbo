part of '_index.dart';

class KidsProv {
  final colId = 'shoes';
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

  final rxProductList = RM.inject<List<KidsShoes>>(() => []);

  final rxSelectedId = RM.inject<String>(() => '');

  final rxLoadMore = RM.injectFuture<List<KidsShoes>>(
    () => Future.value([]),
    sideEffects: SideEffects(
      initState: () => _sv.initProducts(),
      onSetState: (snap) {
        if (snap.hasData) {
          final moreProduct = snap.state.whereType<KidsShoes>().toList();
          _sv.addToList(moreProduct);
        }
      },
    ),
  );

  // * prov detail

  final rxProductFuture = RM.injectFuture<KidsShoes?>(
    () => Future.value(null),
    sideEffects: SideEffects(
      initState: () => _sv.readProduct(),
    ),
  );
}
