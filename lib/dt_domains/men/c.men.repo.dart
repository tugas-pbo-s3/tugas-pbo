part of '_index.dart';

class MenRepo {
  Future<List<MenShoes>> readAllProducts(String lastCreateTime) async {
    final result = await x1FbFirestore.readCollInDoc(
      colId1: _pv.colId,
      docId: 'm-shoes',
      colId2: 'man-shoes',
      limit: _pv.limit,
      lastCreateTime: lastCreateTime,
    );
    // ignore: avoid_print
    print(result.docs.toString());
    List<MenShoes> products = [];
    for (var i in result.docs) {
      products.add(MenShoes.fromMap(i.data()));
    }
    return products;
  }

  // * repo read detail
  Future<MenShoes> readProduct() async {
    final result = await x1FbFirestore.readDocument2(
      colId1: _pv.colId,
      docId1: 'm-shoes',
      colId2: 'man-shoes',
      docId2: _pv.rxSelectedId.st,
    );

    logx.wtf(result.toString());

    final productResult = MenShoes.fromMap(result.data());
    logx.wtf(productResult.toString());
    return productResult;
  }
}
