part of '_index.dart';

class RokRepo {
  Future<List<Rok>> readAllProducts(String lastCreateTime) async {
    final result = await x1FbFirestore.readCollInDoc(
      colId1: _pv.colId,
      docId1: _pv.docId1,
      colId2: _pv.colId2,
      limit: _pv.limit,
      lastCreateTime: lastCreateTime,
    );

    List<Rok> products = [];
    for (var i in result.docs) {
      products.add(Rok.fromMap(i.data()));
    }
    return products;
  }

  Future<List<Rok>> readAllProductsWithoutLimit(String lastCreateTime) async {
    final result = await x1FbFirestore.readCollInDoc(
      colId1: _pv.colId,
      docId1: _pv.docId1,
      colId2: _pv.colId2,
      // limit: _pv.limit,
      lastCreateTime: lastCreateTime,
    );

    List<Rok> products = [];
    for (var i in result.docs) {
      products.add(Rok.fromMap(i.data()));
    }
    return products;
  }

  // * repo read detail
  Future<Rok> readProduct() async {
    final result = await x1FbFirestore.readDocument2(
      colId1: _pv.colId,
      docId1: _pv.docId1,
      colId2: _pv.colId2,
      docId2: _pv.rxSelectedId.st,
    );

    logx.wtf(result.toString());

    final productResult = Rok.fromMap(result.data());
    logx.wtf(productResult.toString());
    return productResult;
  }

  Future<void> uploadImages(Map<String, String> images) async {
    final imageStorage = await x1FbStorage.st.uploadFiles(images);
    logx.e('ini image dari storage: $imageStorage');
  }

  Future<void> createProduct(Rok kidsShoes) async {
    Rok kidsShoesNew = kidsShoes;

    if (kidsShoes.imageUrl != {}) {
      kidsShoes.imageUrl?.forEach((key, value) {});
      final imageWithUrl = await x1FbStorage.st.uploadFiles(kidsShoes.imageUrl!);
      kidsShoesNew = kidsShoes.copyWith(imageUrl: imageWithUrl);
    }
    await x1FbFirestore.createDocument2(
      colId1: _pv.colId,
      docId1: _pv.docId1,
      colId2: _pv.colId2,
      docId2: kidsShoes.productId,
      data: kidsShoesNew.toMap(),
    );
  }

  Future<void> updateProduct(Rok kidsShoes, Map<String, String>? imagesFromStorage) async {
    int imageLength = _pv.rxProductFuture.st?.imageUrl?.length ?? 0;
    if (imageLength > 0) {
      final mainFolder1 = _pv.colId;
      final subFolder1 = _pv.docId1;
      final mainFolder2 = _pv.colId2;
      final subFolder2 = _pv.rxProductFuture.st?.productId;
      if (!kidsShoes.imageUrl!.values.first.startsWith('https')) {
        await x1FbStorage.st.deleteFolder('/$mainFolder1/$subFolder1/$mainFolder2/$subFolder2');
      }
    }
    Rok kidsShoesUpdate = kidsShoes;
    if (kidsShoes.imageUrl != null) {
      if (kidsShoes.imageUrl!.isNotEmpty) {
        if (!kidsShoes.imageUrl!.values.first.startsWith('https')) {
          kidsShoes.imageUrl!.forEach((key, value) {});
          final imageWithUrl = await x1FbStorage.st.uploadFiles(kidsShoes.imageUrl!);
          kidsShoesUpdate = kidsShoes.copyWith(imageUrl: imageWithUrl);
        }
      }
    }

    await x1FbFirestore.updateDocument2(
      colId1: _pv.colId,
      docId1: _pv.docId1,
      colId2: _pv.colId2,
      docId2: kidsShoes.productId,
      data: kidsShoesUpdate.toMap(),
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
