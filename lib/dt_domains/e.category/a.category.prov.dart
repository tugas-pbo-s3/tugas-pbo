part of '_index.dart';

class CategoryProv {
  final colId = 'category';

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

  final rxCategoryList = RM.inject<List<Category>>(() => []);

  final rxCategoryFuture = RM.injectFuture<Category?>(
    () => Future.value(null),
    sideEffects: SideEffects(
      initState: () => Serv.category.readCategory(),
    ),
  );

  final rxSelectedId = RM.inject<String>(() => '');

  final rxLoadMore = RM.injectFuture<List<Category>>(
    () => Future.value([]),
    sideEffects: SideEffects(
      initState: () => Serv.category.initCategories(),
      onSetState: (snap) {
        if (snap.hasData) {
          final moreCategory = snap.state.whereType<Category>().toList();
          Serv.category.addToList(moreCategory);
        }
      },
    ),
  );
}
