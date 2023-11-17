part of '_index.dart';

class CartProv {
  final rxCart = RM.inject<Cart>(
    () => Cart(),
    autoDisposeWhenNotUsed: false,
    persist: () => PersistState(
      key: 'rxCart',
      throttleDelay: 500,
      shouldRecreateTheState: false,
      toJson: (s) => s.toJson(),
      fromJson: (json) => Cart.fromJson(json),
    ),
    sideEffects: SideEffects.onData((data) {
      print('wkwkwkwk');
    }),
  );
}
