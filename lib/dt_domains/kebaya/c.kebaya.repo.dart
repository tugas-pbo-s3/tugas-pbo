part of '_index.dart';

class KebayaRepo {
  Future<List<Kebaya>> readAllProducts(String lastCreateTime) async {
    final result = await x1FbFirestore.readCollInDoc(
      colId1: _pv.colId,
      docId1: _pv.docId1,
      colId2: _pv.colId2,
      limit: _pv.limit,
      lastCreateTime: lastCreateTime,
    );
    List<Kebaya> products = [];
    for (var i in result.docs) {
      products.add(Kebaya.fromMap(i.data()));
    }
    return products;
  }

  Future<List<Kebaya>> readAllProductsWithoutLimit(String lastCreateTime) async {
    final result = await x1FbFirestore.readCollInDoc(
      colId1: _pv.colId,
      docId1: _pv.docId1,
      colId2: _pv.colId2,
      // limit: _pv.limit,
      lastCreateTime: lastCreateTime,
    );

    List<Kebaya> products = [];
    for (var i in result.docs) {
      products.add(Kebaya.fromMap(i.data()));
    }
    return products;
  }

  // * repo read detail
  Future<Kebaya> readProduct() async {
    final result = await x1FbFirestore.readDocument2(
      colId1: _pv.colId,
      docId1: _pv.docId1,
      colId2: _pv.colId2,
      docId2: _pv.rxSelectedId.st,
    );

    logx.wtf(result.toString());

    final productResult = Kebaya.fromMap(result.data() ?? {});
    logx.wtf(productResult.toString());
    return productResult;
  }

  Future<void> uploadImages(Map<String, String> images) async {
    final imageStorage = await x1FbStorage.st.uploadFiles(images);
    logx.e('ini image dari storage: $imageStorage');
  }

  Future<void> createProduct(Kebaya menShoes) async {
    Kebaya menShoesNew = menShoes;

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

  // Future<void> updateProduct(Kebaya menShoes, Map<String, String>? imagesFromStorage) async {
  //   int imageLength = _pv.rxProductFuture.st?.imageUrl?.length ?? 0;
  //   if (imageLength > 0) {
  //     final mainFolder1 = _pv.colId;
  //     final subFolder1 = _pv.docId1;
  //     final mainFolder2 = _pv.colId2;
  //     final subFolder2 = _pv.rxProductFuture.st?.productId;
  //     if (!menShoes.imageUrl!.values.first.startsWith('https')) {
  //       await x1FbStorage.st.deleteFolder('/$mainFolder1/$subFolder1/$mainFolder2/$subFolder2');
  //     }
  //   }
  //   Kebaya menShoesUpdate = menShoes;
  //   if (menShoes.imageUrl != null) {
  //     if (menShoes.imageUrl!.isNotEmpty) {
  //       if (!menShoes.imageUrl!.values.first.startsWith('https')) {
  //         menShoes.imageUrl!.forEach((key, value) {});
  //         final imageWithUrl = await x1FbStorage.st.uploadFiles(menShoes.imageUrl!);
  //         menShoesUpdate = menShoes.copyWith(imageUrl: imageWithUrl);
  //       }
  //     }
  //  await x1FbFirestore.updateDocument2(
  //     colId1: _pv.colId,
  //     docId1: _pv.docId1,
  //     colId2: _pv.colId2,
  //     docId2: menShoes.productId,
  //     data: menShoesUpdate.toMap(),
  //   );
  //   }

  Future<Kebaya> updateProduct(Kebaya kebaya) async {
    final imagesOld = Prov.kebaya.st.rxProductFuture.st!.imageUrl;
    final imagesNew = kebaya.imageUrl;
    Map<String, String> imagesToDelete = {};
    Map<String, String> imagesToUpload = {};
    Map<String, String> imagesFinal = {...?kebaya.imageUrl};
    imagesNew?.forEach((key, value) {
      if (!imagesOld!.containsKey(key)) {
        imagesToUpload[key] = value;
      }
    });
    imagesOld?.forEach((key, value) {
      if (!imagesNew!.containsKey(key)) {
        imagesToDelete[key] = value;
      }
    });
    if (imagesToDelete.isNotEmpty) {
      await x1FbStorage.st.deleteFiles(imagesToDelete.keys.toList());
    }
    if (imagesToUpload.isNotEmpty) {
      final imagesWithUrls = await x1FbStorage.st.uploadFiles(imagesToUpload);
      imagesWithUrls.forEach((key, value) async {
        imagesFinal[key] = value;
      });
    }
    final productFinal = kebaya.copyWith(imageUrl: imagesFinal);
    // await x1FbFirestore.updateDocument(
    //   colId: Prov.kebaya.st.colId,
    //   docId: kebaya.productId,
    //   data: productFinal.toMap(),
    // );
    await x1FbFirestore.updateDocument2(
      colId1: _pv.colId,
      docId1: _pv.docId1,
      colId2: _pv.colId2,
      docId2: kebaya.productId,
      data: productFinal.toMap(),
    );
    return productFinal;
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
