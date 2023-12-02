part of '_index.dart';

abstract class Prov {
  static Injected<AuthProv> get auth => _authProv;
  static Injected<UserProv> get user => _userProv;
  static Injected<RoleProv> get role => _roleProv;
  static Injected<CategoryProv> get category => _categoryProv;
  static Injected<TypeProv> get type => _typeProv;
  static Injected<KelomProv> get kelom => _kelomProv;
  static Injected<KebayaProv> get kebaya => _kebayaProv;
  static Injected<CartProv> get keranjang => _cartProv;
  static Injected<RokProv> get rok => _rokProv;
}

final _authProv = RM2.inj(AuthProv());
final _userProv = RM2.inj(UserProv());
final _roleProv = RM2.inj(RoleProv());
final _categoryProv = RM2.inj(CategoryProv());
final _typeProv = RM2.inj(TypeProv());
final _kelomProv = RM2.inj(KelomProv());
final _kebayaProv = RM2.inj(KebayaProv());
final _cartProv = RM2.inj(CartProv());
final _rokProv = RM2.inj(RokProv());
