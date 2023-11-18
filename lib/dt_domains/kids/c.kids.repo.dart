part of '_index.dart';

class KidsRepo {
  Future<List<KidsShoes>> readAllProducts(String lastCreateTime) async {
    final result = await x1FbFirestore.readCollInDoc(
      colId1: _pv.colId,
      docId1: 'k-shoes',
      colId2: 'kids-shoes',
      limit: _pv.limit,
      lastCreateTime: lastCreateTime,
    );

    List<KidsShoes> products = [];
    for (var i in result.docs) {
      products.add(KidsShoes.fromMap(i.data()));
    }
    return products;
  }

  // * repo read detail
  Future<KidsShoes> readProduct() async {
    final result = await x1FbFirestore.readDocument2(
      colId1: _pv.colId,
      docId1: 'k-shoes',
      colId2: 'kids-shoes',
      docId2: _pv.rxSelectedId.st,
    );

    logx.wtf(result.toString());

    final productResult = KidsShoes.fromMap(result.data());
    logx.wtf(productResult.toString());
    return productResult;
  }

  // Future<List<KidsShoes>> addToCart(KidsShoes product) async {
  //   await Future.delayed(1.seconds);
  //   List<WomenShoes> products = [];
  //   _pv.rxCart.st = [..._pv.rxCart.st]..insert(0, product);
  //   return products;
  // }
}
