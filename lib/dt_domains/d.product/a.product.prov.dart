part of '_index.dart';

class ProductProv {
  // final rxProductList = RM.inject<List<Product>>(() => []);

  // final rxSelectedId = RM.inject<String>(() => '');

  // final limit = 4;

  // final rxImageUrl = RM.inject<String?>(() => null);

  // final rxPickedFile = RM.inject<XFile?>(() => null);

  // final rxProductDetail = RM.injectFuture<Product?>(
  //   () => Future.value(null),
  //   sideEffects: SideEffects(
  //     initState: () => Serv.product.initProductDetail(),
  //   ),
  // );

  // final rxProductLoader = RM.injectFuture<List<Product>?>(
  //   () => Future.value([]),
  //   sideEffects: SideEffects(
  //     initState: () => Serv.product.initProductsLoader(),
  //     onSetState: (snap) {
  //       snap.onAll(
  //         onIdle: () => logx.s('from snap rxProductLoader: onIdle ...'),
  //         onWaiting: () => logx.s('from snap rxProductLoader: onWaiting ...'),
  //         onError: (_, __) => logx.s('from snap rxProductLoader: onError ...'),
  //         onData: (data) {
  //           logx.s('from snap rxProductLoader: onData ...');
  //           final moreProducts = data;
  //           if (moreProducts != null) {
  //             Serv.product.addToList(moreProducts);
  //           }
  //         },
  //       );
  //     },
  //   ),
  // );
}
