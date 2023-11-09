part of '_index.dart';

abstract class Prov {
  static Injected<AuthProv> get auth => _authProv;
  static Injected<UserProv> get user => _userProv;
  static Injected<RoleProv> get role => _roleProv;
  static Injected<ProductProv> get product => _productProv;
  static Injected<CategoryProv> get category => _categoryProv;
  static Injected<TypeProv> get type => _typeProv;
  static Injected<WomenProv> get women => _womenProv;
  static Injected<MenProv> get man => _manProv;
}

final _authProv = RM2.inj(AuthProv());
final _userProv = RM2.inj(UserProv());
final _roleProv = RM2.inj(RoleProv());
final _productProv = RM2.inj(ProductProv());
final _categoryProv = RM2.inj(CategoryProv());
final _typeProv = RM2.inj(TypeProv());
final _womenProv = RM2.inj(WomenProv());
final _manProv = RM2.inj(MenProv());
