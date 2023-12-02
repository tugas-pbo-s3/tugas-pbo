part of '_index.dart';

abstract class Repo {
  static Injected<AuthRepo> get auth => _authRepo;
  static Injected<UserRepo> get user => _userRepo;
  static Injected<RoleRepo> get role => _roleRepo;
  static Injected<CategoryRepo> get category => _categoryRepo;
  static Injected<TypeRepo> get type => _typeRepo;
  static Injected<KelomRepo> get kelom => _kelomRepo;
  static Injected<KebayaRepo> get kebaya => _kebayaRepo;
  static Injected<CartRepo> get keranjang => _cartRepo;
  static Injected<RokRepo> get rok => _rokRepo;
}

final _authRepo = RM3.inj(AuthRepo());
final _userRepo = RM3.inj(UserRepo());
final _roleRepo = RM3.inj(RoleRepo());
final _categoryRepo = RM3.inj(CategoryRepo());
final _typeRepo = RM3.inj(TypeRepo());
final _kelomRepo = RM3.inj(KelomRepo());
final _kebayaRepo = RM3.inj(KebayaRepo());
final _cartRepo = RM3.inj(CartRepo());
final _rokRepo = RM3.inj(RokRepo());
