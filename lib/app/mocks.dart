part of '_index.dart';

class Mocks {
  static final Mocks instance = Mocks._privateConstructor();

  Mocks._privateConstructor();

  var productList = [];

  init() async {
    injectMocks();

    final productMap = await Fun.loadJson('assets/json/products.json');
    productList = productMap['data'];
  }

  injectMocks() {
    Repo.user.injectMock(() => UserRepoMock());
    Repo.role.injectMock(() => RoleRepoMock());
    Repo.product.injectMock(() => ProductRepoMock());
    Repo.category.injectMock(() => CategoryRepoMock());
    Repo.type.injectMock(() => TypeRepoMock());
  }
}
