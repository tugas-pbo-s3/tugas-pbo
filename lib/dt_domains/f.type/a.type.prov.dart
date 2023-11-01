part of '_index.dart';

class TypeProv {
  final rxSelectedId = RM.inject<String>(() => '');

  final rxTypeList = RM.inject<List<TypeOfShoes>>(() => []);

  final rxTypeLoader = RM.injectFuture<List<TypeOfShoes>?>(
    () => Future.value([]),
    sideEffects: SideEffects(
      initState: () => Serv.type.initTypeLoader(),
      onSetState: (snap) {
        snap.onAll(
          onIdle: () => logx.s('from snap rxTypeLoader: onIdle ...'),
          onWaiting: () => logx.s('from snap rxTypeLoader: onWaiting ...'),
          onError: (_, __) => logx.s('from snap rxTypeLoader: onError ...'),
          onData: (data) {
            logx.s('from snap rxTypeLoader: onData ...');
            final moreCategories = data;
            if (moreCategories != null) {
              Serv.type.addToList(moreCategories);
            }
          },
        );
      },
    ),
  );

  final rxTypeDetail = RM.injectFuture<TypeOfShoes?>(
    () => Future.value(null),
    sideEffects: SideEffects(
      initState: () => Serv.type.initTypeDetail(),
    ),
  );
}
