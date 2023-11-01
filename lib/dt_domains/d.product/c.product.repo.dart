part of '_index.dart';

class ProductRepo {
  Future<List<Product>?> readProducts() async {
    try {
      List<Product> products = [];
      final result = await x1HttpDio.get(ReqX(path: '/products'));
      for (var i in result.data['data']) {
        products.add(Product.fromMap(i));
      }
      return products;
    } catch (e) {
      logx.e('this is from products');
      rethrow;
    }
  }

  Future<Product> readProduct(String id) async {
    try {
      final result = await x1HttpDio.get(
        ReqX(
          path: '/products/$id',
        ),
      );
      final product = Product.fromMap(result.data['data']);
      logx.w(result.data.toString());
      logx.w(product.toString());
      return product;
    } catch (e) {
      logx.e('this is from product');
      rethrow;
    }
  }

  Future<dynamic> createProduct(Product product, XFile? file) async {
    try {
      await x1HttpDio.post(
        ReqX(
          path: '/products',
          data: product.toMapInput(),
        ),
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> deleteProduct(String id) async {
    try {
      await x1HttpDio.delete(
        ReqX(path: '/products/$id'),
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> updateProduct(Product product, String id, XFile? file) async {
    try {
      await x1HttpDio.put(
        ReqX(
          path: '/products/$id',
          data: product.toMap(),
        ),
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> deleteAllProducts() async {
    try {
      await x1HttpDio.delete(
        ReqX(path: '/seeder'),
      );
    } catch (e) {
      rethrow;
    }
  }

  // * ignore ----
  Future<String> uploadImage(XFile? file) async {
    try {
      String imageUrl = '';
      if (file != null) {
        String fileName = file.path.split('/').last;
        FormData formData = FormData.fromMap({
          "productImage": await MultipartFile.fromFile(
            file.path,
            filename: fileName,
          ),
        });
        final result = await x1HttpDio.upload(
          ReqX(path: '/products/image', data: formData),
        );
        Prov.product.st.rxImageUrl.setState((s) => result.data['data']['image_url']);
        imageUrl = result.data['data']['image_url'];
      }
      return imageUrl;
    } catch (e) {
      rethrow;
    }
  }
}
