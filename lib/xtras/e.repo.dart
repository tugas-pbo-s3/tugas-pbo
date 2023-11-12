part of '_index.dart';

abstract class Repo {
  static Injected<AuthRepo> get auth => _authRepo;
  static Injected<UserRepo> get user => _userRepo;
  static Injected<RoleRepo> get role => _roleRepo;
  static Injected<ProductRepo> get product => _productRepo;
  static Injected<CategoryRepo> get category => _categoryRepo;
  static Injected<TypeRepo> get type => _typeRepo;
  static Injected<WomenRepo> get women => _womenRepo;
  static Injected<MenRepo> get man => _manRepo;
  static Injected<CartRepo> get cart => _cartRepo;
}

final _authRepo = RM3.inj(AuthRepo());
final _userRepo = RM3.inj(UserRepo());
final _roleRepo = RM3.inj(RoleRepo());
final _productRepo = RM3.inj(ProductRepo());
final _categoryRepo = RM3.inj(CategoryRepo());
final _typeRepo = RM3.inj(TypeRepo());
final _womenRepo = RM3.inj(WomenRepo());
final _manRepo = RM3.inj(MenRepo());
final _cartRepo = RM3.inj(CartRepo());
