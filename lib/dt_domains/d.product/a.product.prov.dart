part of '_index.dart';

class ProductProv {
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

  final rxProductList = RM.inject<List<WomenShoes>>(() => []);

  // final rxProductFuture = RM.injectFuture<Product?>(
  //   () => Future.value(null),
  //   sideEffects: SideEffects(
  //     initState: () => Serv.product.readProduct(),
  //   ),
  // );

  final rxSelectedId = RM.inject<String>(() => '');

  final rxLoadMore = RM.injectFuture<List<WomenShoes>>(
    () => Future.value([]),
    sideEffects: SideEffects(
      initState: () => Serv.product.initProducts(),
      onSetState: (snap) {
        if (snap.hasData) {
          final moreProduct = snap.state.whereType<WomenShoes>().toList();
          Serv.product.addToList(moreProduct);
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
