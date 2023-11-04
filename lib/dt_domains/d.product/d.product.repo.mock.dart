part of '_index.dart';

class ProductRepoMock implements ProductRepo {
  // @override
  // Future createProduct(Product product, XFile? file) {
  //   throw UnimplementedError();
  // }

  // @override
  // Future deleteAllProducts() {
  //   throw UnimplementedError();
  // }

  // @override
  // Future deleteProduct(String id) {
  //   throw UnimplementedError();
  // }

  // @override
  // Future<Product> readProduct(String id) async {
  //   try {
  //     await Future.delayed(400.milliseconds);
  //     final index = _pv.rxProductList.st.indexWhere((element) => element.productId == id);
  //     return _pv.rxProductList.st[index];
  //   } catch (e) {
  //     logx.e('[Product: RepoMock] readProduct');
  //     rethrow;
  //   }
  // }

  // @override
  // Future<List<Product>?> readProducts() async {
  //   try {
  //     List<Product> products = [];
  //     final result = await Fun.loadJson('assets/json/products.json');
  //     for (var p in result["data"]) {
  //       products.add(Product.fromMap(p));
  //     }
  //     return products;
  //   } catch (e) {
  //     logx.e('[Product: RepoMock] readProducts');
  //     rethrow;
  //   }
  // }

  // @override
  // Future updateProduct(Product product, String id, XFile? file) {
  //   throw UnimplementedError();
  // }

  // @override
  // Future<String> uploadImage(XFile? file) {
  //   throw UnimplementedError();
  // }
}
