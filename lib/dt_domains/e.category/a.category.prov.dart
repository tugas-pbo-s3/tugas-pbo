part of '_index.dart';

class CategoryProv {
  final rxSelectedId = RM.inject<String>(() => '');

  final rxCategoryList = RM.inject<List<Category>>(() => []);

  final rxCategoryLoader = RM.injectFuture<List<Category>?>(
    () => Future.value([]),
    sideEffects: SideEffects(
      initState: () => Serv.category.initCategoryLoader(),
      onSetState: (snap) {
        snap.onAll(
          onIdle: () => logx.s('from snap rxCategoryLoader: onIdle ...'),
          onWaiting: () => logx.s('from snap rxCategoryLoader: onWaiting ...'),
          onError: (_, __) => logx.s('from snap rxCategoryLoader: onError ...'),
          onData: (data) {
            logx.s('from snap rxCategoryLoader: onData ...');
            final moreCategories = data;
            if (moreCategories != null) {
              Serv.category.addToList(moreCategories);
            }
          },
        );
      },
    ),
  );

  final rxCategoryDetail = RM.injectFuture<Category?>(
    () => Future.value(null),
    sideEffects: SideEffects(
      initState: () => Serv.category.initCategoryDetail(),
    ),
  );
}
