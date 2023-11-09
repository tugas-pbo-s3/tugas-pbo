part of '_index.dart';

class MenProv {
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

  final rxProductList = RM.inject<List<MenShoes>>(() => []);

  final rxSelectedId = RM.inject<String>(() => '');

  final rxLoadMore = RM.injectFuture<List<MenShoes>>(
    () => Future.value([]),
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

  // * prov detail

  final rxProductFuture = RM.injectFuture<MenShoes?>(
    () => Future.value(null),
    sideEffects: SideEffects(
      initState: () => _sv.readProduct(),
    ),
  );
}
