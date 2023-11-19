part of '_index.dart';

class MenRepo {
  Future<List<MenShoes>> readAllProducts(String lastCreateTime) async {
    final result = await x1FbFirestore.readCollInDoc(
      colId1: _pv.colId,
      docId1: _pv.docId1,
      colId2: _pv.colId2,
      limit: _pv.limit,
      lastCreateTime: lastCreateTime,
    );
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
      docId1: _pv.docId1,
      colId2: _pv.colId2,
      docId2: _pv.rxSelectedId.st,
    );

    logx.wtf(result.toString());

    final productResult = MenShoes.fromMap(result.data() ?? {});
    logx.wtf(productResult.toString());
    return productResult;
  }

  Future<void> uploadImages(Map<String, String> images) async {
    final imageStorage = await x1FbStorage.st.uploadFiles(images);
    logx.e('ini image dari storage: $imageStorage');
  }

  Future<void> createProduct(MenShoes menShoes) async {
    MenShoes menShoesNew = menShoes;

    if (menShoes.imageUrl != {}) {
      menShoes.imageUrl?.forEach((key, value) {});
      final imageWithUrl = await x1FbStorage.st.uploadFiles(menShoes.imageUrl!);
      menShoesNew = menShoes.copyWith(imageUrl: imageWithUrl);
    }
    await x1FbFirestore.createDocument2(
      colId1: _pv.colId,
      docId1: _pv.docId1,
      colId2: _pv.colId2,
      docId2: menShoes.productId,
      data: menShoesNew.toMap(),
    );
  }

  Future<void> updateProduct(MenShoes menShoes, Map<String, String>? imagesFromStorage) async {
    int imageLength = _pv.rxProductFuture.st?.imageUrl?.length ?? 0;
    if (imageLength > 0) {
      final mainFolder1 = _pv.colId;
      final subFolder1 = _pv.docId1;
      final mainFolder2 = _pv.colId2;
      final subFolder2 = _pv.rxProductFuture.st?.productId;
      if (!menShoes.imageUrl!.values.first.startsWith('https')) {
        await x1FbStorage.st.deleteFolder('/$mainFolder1/$subFolder1/$mainFolder2/$subFolder2');
      }
    }
    MenShoes menShoesUpdate = menShoes;
    if (menShoes.imageUrl != null) {
      if (menShoes.imageUrl!.isNotEmpty) {
        if (!menShoes.imageUrl!.values.first.startsWith('https')) {
          menShoes.imageUrl!.forEach((key, value) {});
          final imageWithUrl = await x1FbStorage.st.uploadFiles(menShoes.imageUrl!);
          menShoesUpdate = menShoes.copyWith(imageUrl: imageWithUrl);
        }
      }
    }

    await x1FbFirestore.updateDocument2(
      colId1: _pv.colId,
      docId1: _pv.docId1,
      colId2: _pv.colId2,
      docId2: menShoes.productId,
      data: menShoesUpdate.toMap(),
    );
  }

  Future<void> deleteProduct() async {
    int imageLength = _pv.rxProductFuture.st!.imageUrl?.length ?? 0;
    if (imageLength > 0) {
      final mainFolder = _pv.colId;
      final subFolder1 = _pv.docId1;
      final mainFolder2 = _pv.colId2;
      final subFolder2 = _pv.rxProductFuture.st?.productId;
      await x1FbStorage.st.deleteFolder('/$mainFolder/$subFolder1/$mainFolder2/$subFolder2');
    }
    await x1FbFirestore.deleteDocument2(
      colId1: _pv.colId,
      docId1: _pv.docId1,
      colId2: _pv.colId2,
      docId2: _pv.rxSelectedId.st,
    );
  }

  Future<void> deleteProducts() async {
    await x1FbFirestore.deleteAllDocument(colId: _pv.colId);
  }
}
