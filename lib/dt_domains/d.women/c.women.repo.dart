part of '_index.dart';

class WomenRepo {
  Future<List<WomenShoes>> readAllProducts(String lastCreateTime) async {
    final result = await x1FbFirestore.readCollInDoc(
      colId1: _pv.colId,
      docId1: _pv.docId1,
      colId2: _pv.colId2,
      limit: _pv.limit,
      lastCreateTime: lastCreateTime,
    );
    List<WomenShoes> products = [];
    for (var i in result.docs) {
      products.add(WomenShoes.fromMap(i.data()));
    }
    return products;
  }

  // Future<List<WomenShoes>> readAllProducts(String lastCreateTime) async {
  //   final result = await x1FbFirestore.readCollInDoc(
  //     colId1: _pv.colId,
  //     docId1: 'w-shoes',
  //     colId2: 'women-shoes',
  //     limit: _pv.limit,
  //     lastCreateTime: lastCreateTime,
  //   );

  //   List<WomenShoes> products = [];
  //   for (var i in result.docs) {
  //     products.add(WomenShoes.fromMap(i.data()));
  //   }
  //   return products;
  // }

  Future<WomenShoes?> readProduct() async {
    final docSnapshot = await x1FbFirestore.readDocument2(
      colId1: _pv.colId,
      docId1: _pv.docId1,
      colId2: _pv.colId2,
      docId2: _pv.rxSelectedId.st,
    );
    return WomenShoes.fromMap(docSnapshot.data() ?? {});
  }

  Future<void> uploadImages(Map<String, String> images) async {
    final imageStorage = await x1FbStorage.st.uploadFiles(images);
    logx.e('ini image dari storage: $imageStorage');
  }

  Future<void> createProduct(WomenShoes womenShoes) async {
    WomenShoes womenShoesNew = womenShoes;

    if (womenShoes.imageUrl != {}) {
      womenShoes.imageUrl?.forEach((key, value) {});
      final imageWithUrl = await x1FbStorage.st.uploadFiles(womenShoes.imageUrl!);
      womenShoesNew = womenShoes.copyWith(imageUrl: imageWithUrl);
    }
    await x1FbFirestore.createDocument2(
      colId1: _pv.colId,
      docId1: _pv.docId1,
      colId2: _pv.colId2,
      docId2: womenShoes.productId,
      data: womenShoesNew.toMap(),
    );
  }

  Future<void> updateProduct(WomenShoes womenShoes, Map<String, String>? imagesFromStorage) async {
    int imageLength = _pv.rxProductFuture.st?.imageUrl?.length ?? 0;
    if (imageLength > 0) {
      final mainFolder1 = _pv.colId;
      final subFolder1 = _pv.docId1;
      final mainFolder2 = _pv.colId2;
      final subFolder2 = _pv.rxProductFuture.st?.productId;
      if (!womenShoes.imageUrl!.values.first.startsWith('https')) {
        await x1FbStorage.st.deleteFolder('/$mainFolder1/$subFolder1/$mainFolder2/$subFolder2');
      }
    }
    WomenShoes womenShoesUpdate = womenShoes;
    if (womenShoes.imageUrl != null) {
      if (womenShoes.imageUrl!.isNotEmpty) {
        if (!womenShoes.imageUrl!.values.first.startsWith('https')) {
          womenShoes.imageUrl!.forEach((key, value) {});
          final imageWithUrl = await x1FbStorage.st.uploadFiles(womenShoes.imageUrl!);
          womenShoesUpdate = womenShoes.copyWith(imageUrl: imageWithUrl);
        }
      }
    }

    await x1FbFirestore.updateDocument2(
      colId1: _pv.colId,
      docId1: _pv.docId1,
      colId2: _pv.colId2,
      docId2: womenShoes.productId,
      data: womenShoesUpdate.toMap(),
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
