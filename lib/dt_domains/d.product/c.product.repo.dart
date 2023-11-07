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

  Future<WomenShoes> readProduct() async {
    final docSnapshot = await x1FbFirestore.readDocument2(
      colId1: _pv.colId,
      docId1: 'w-shoes',
      colId2: 'women-shoes',
      docId2: _pv.rxSelectedId.st,
    );
    return WomenShoes.fromMap(docSnapshot.data() ?? {});
  }

  Future<void> createProduct(WomenShoes product) async {
    await x1FbFirestore.createDocument2(
      colId1: _pv.colId,
      docId1: 'w-shoes',
      colId2: 'women-shoes',
      docId2: product.productId,
      data: product.toMap(),
    );
  }
}
