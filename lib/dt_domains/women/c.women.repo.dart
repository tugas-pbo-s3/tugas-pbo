part of '_index.dart';

class WomenRepo {
  Future<List<WomenShoes>> readAllProducts(String lastCreateTime) async {
    final result = await x1FbFirestore.readCollInDoc(
      colId1: _pv.colId,
      docId: 'w-shoes',
      colId2: 'women-shoes',
      limit: _pv.limit,
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
    final result = await x1FbFirestore.readDocument2(
      colId1: _pv.colId,
      docId1: 'w-shoes',
      colId2: 'women-shoes',
      docId2: _pv.rxSelectedId.st,
    );

    logx.wtf(result.toString());

    final productResult = WomenShoes.fromMap(result.data());
    logx.wtf(productResult.toString());
    return productResult;
  }

  Future<List<WomenShoes>> addToCart(WomenShoes product) async {
    await Future.delayed(1.seconds);
    List<WomenShoes> products = [];
    _pv.rxCartList.st = [..._pv.rxCartList.st]..insert(0, product);
    return products;
  }
}
