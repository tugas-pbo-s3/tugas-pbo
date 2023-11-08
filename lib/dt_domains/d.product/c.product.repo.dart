part of '_index.dart';

class ProductRepo {
  Future<List<WomenShoes>> readAllProducts(String lastCreateTime) async {
    final result = await x1FbFirestore.readCollInDoc(
      colId1: Prov.product.st.colId,
      docId: 'w-shoes',
      colId2: 'women-shoes',
      limit: Prov.product.st.limit,
      lastCreateTime: lastCreateTime,
    );

    List<WomenShoes> products = [];
    for (var i in result.docs) {
      products.add(WomenShoes.fromMap(i.data()));
    }
    return products;
  }

  // * repo read detail
  Future<WomenShoes> readProduct() async {
    final result = await x1FbFirestore.readDocumentTwoId(
      colId1: Prov.product.st.colId,
      docId: 'w-shoes',
      colId2: 'women-shoes',
      docId2: _pv.rxSelectedId.st,
    );

    logx.wtf(result.toString());

    final productResult = WomenShoes.fromMap(result.data());
    logx.wtf(productResult.toString());
    return productResult;
  }

  // Future<Product> readProduct(String id) async {
  //   try {
  //     final result = await x1HttpDio.get(
  //       ReqX(
  //         path: '/products/$id',
  //       ),
  //     );
  //     final product = Product.fromMap(result.data['data']);
  //     logx.w(result.data.toString());
  //     logx.w(product.toString());
  //     return product;
  //   } catch (e) {
  //     logx.e('this is from product');
  //     rethrow;
  //   }
  // }

  // Future<dynamic> createProduct(Product product, XFile? file) async {
  //   try {
  //     await x1HttpDio.post(
  //       ReqX(
  //         path: '/products',
  //         data: product.toMapInput(),
  //       ),
  //     );
  //   } catch (e) {
  //     rethrow;
  //   }
  // }

  // Future<dynamic> deleteProduct(String id) async {
  //   try {
  //     await x1HttpDio.delete(
  //       ReqX(path: '/products/$id'),
  //     );
  //   } catch (e) {
  //     rethrow;
  //   }
  // }

  // Future<dynamic> updateProduct(Product product, String id, XFile? file) async {
  //   try {
  //     await x1HttpDio.put(
  //       ReqX(
  //         path: '/products/$id',
  //         data: product.toMap(),
  //       ),
  //     );
  //   } catch (e) {
  //     rethrow;
  //   }
  // }

  // Future<dynamic> deleteAllProducts() async {
  //   try {
  //     await x1HttpDio.delete(
  //       ReqX(path: '/seeder'),
  //     );
  //   } catch (e) {
  //     rethrow;
  //   }
  // }

  // // * ignore ----
  // Future<String> uploadImage(XFile? file) async {
  //   try {
  //     String imageUrl = '';
  //     if (file != null) {
  //       String fileName = file.path.split('/').last;
  //       FormData formData = FormData.fromMap({
  //         "productImage": await MultipartFile.fromFile(
  //           file.path,
  //           filename: fileName,
  //         ),
  //       });
  //       final result = await x1HttpDio.upload(
  //         ReqX(path: '/products/image', data: formData),
  //       );
  //       Prov.product.st.rxImageUrl.setState((s) => result.data['data']['image_url']);
  //       imageUrl = result.data['data']['image_url'];
  //     }
  //     return imageUrl;
  //   } catch (e) {
  //     rethrow;
  //   }
  // }
}
