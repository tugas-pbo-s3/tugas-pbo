part of '_index.dart';

class AdminProductInputCtrl {
  init() => logxx.i(AdminProductInputCtrl, '...');

  action() => _dt.rxInt.setState((s) => s + 1);

  setSizesValues(sizeList) {
    _dt.rxSizesValues.st = sizeList;
  }

  setColorsValues(colorList) {
    _dt.rxColorsValues.st = colorList;
  }

  List<int> getSelectedSizes() {
    List<int> sizes = [];
    _dt.rxSelectedSizes.st = [..._dt.rxSizesValues.st];
    for (var s in _dt.rxSelectedSizes.st) {
      sizes.add(s.size);
    }
    return sizes;
  }

  List<String> getSelectedColors() {
    List<String> colors = [];
    _dt.rxSelectedColors.st = [..._dt.rxColorsValues.st];
    for (var c in _dt.rxSelectedColors.st) {
      colors.add(c.colorText ?? c.color.toString());
    }
    return colors;
  }

  addToListSizes() {
    _dt.rxShoesSizes.st = getSelectedSizes();
    logx.i('shoes size: ${_dt.rxShoesSizes.st}');
  }

  addToListColors() {
    _dt.rxShoesColors.st = getSelectedColors();
    logx.i('shoes color: ${_dt.rxShoesColors.st}');
  }

  // Future<void> pickImages() async {
  //   List<String> listImages = [];
  //   Map<String, String> mapImages = {};
  //   _dt.rxGeneratedId.setState((s) => const Uuid().v4());
  //   final id = _dt.rxGeneratedId.st;
  //   // final index = _dt.products.st.indexWhere((element) => element.productId == id);
  //   // _dt.products.st[index].imageUrl?.forEach((key, value) {
  //   //   listImages.add(value);
  //   // });
  //   final pickedFiles = await ImagePicker().pickMultiImage();
  //   for (var item in pickedFiles) {
  //     listImages.add(item.path);
  //   }
  //   listImages.asMap().forEach((key, value) {
  //     mapImages['${_dt.colId}/${_dt.docId}/${_dt.colId2}/$id/$id-${key.toString()}'] = value;
  //   });
  //   for (var e in listImages) {
  //     logx.w(e);
  //   }
  //   logx.w('jumlah image ${listImages.length.toString()}');
  //   logx.i(mapImages.values.toString());
  //   // return mapImages;
  //   _dt.rxImages.st = mapImages;
  //   logx.e(_dt.rxImages.st.values.toString());

  //   final newProduct = _dt.rxProduct.st?.copyWith(imageUrl: _dt.rxImages.st);
  //   _dt.rxProduct.st = newProduct;
  // }

  uploadImages() async {
    await Serv.product.uploadImages(_dt.rxImages.st);
  }

  Future<void> pickImages() async {
    List<String> pathImages = [];
    Map<String, String> mapImages = {};
    _dt.rxGeneratedId.st = const Uuid().v4();
    final id = _dt.rxGeneratedId.st;
    final pickedFiles = await ImagePicker().pickMultiImage();
    for (var i in pickedFiles) {
      logx.e(i.path);
      pathImages.add(i.path);
    }
    for (var i in pathImages) {
      logx.w(i);
    }
    logx.e(pickedFiles.length.toString());
    pathImages.asMap().forEach((key, value) {
      mapImages['${_dt.colId}/${_dt.docId}/${_dt.colId2}/$id/$id-${key.toString()}'] = value;
    });
    _dt.rxImages.st = mapImages;
    // mapImages.forEach((key, value) {
    //   _dt.rxImages.st.forEach((key2, value2) {
    //     key2 = key;
    //     value2 = value;
    //   });
    // });

    logx.i('ini imageeeeee ${_dt.rxImages.st}');
    logx.i('ini imageeeeee ${_dt.rxImages.st.length}');
  }

  createProduct() async {
    final indexCategory = _dt.rxCategoryList.st.indexWhere((element) => element.categoryId == _dt.rxCategory.value);
    final category = _dt.rxCategoryList.st[indexCategory];
    final product = WomenShoes(
      category: Category(
        categoryId: _dt.rxCategory.value ?? '',
        name: category.name,
        createdAt: category.createdAt,
        updatedAt: category.updatedAt,
      ),
      productId: _dt.rxGeneratedId.st != '' ? _dt.rxGeneratedId.st : const Uuid().v4(),
      name: _dt.rxName.value,
      description: _dt.rxDescription.value,
      price: int.parse(_dt.rxPrice.value),
      quantity: int.parse(_dt.rxQuantity.value),
      createdAt: DateTime.now().toString(),
      colors: _dt.rxShoesColors.st,
      sizes: _dt.rxShoesSizes.st,
      merk: _dt.rxMerk.value,
      imageUrl: _dt.rxImages.st,
    );
    // _dt.rxProduct.setState((s) => product);

    // WomenShoes productx = product;
    // if (product.imageUrl != {}) {
    //   product.imageUrl?.forEach((key, value) {});
    //   // final imageWithUrl = await x1FbStorage.st.uploadFiles(product.images);
    //   productx = product.copyWith(imageUrl: product.imageUrl);
    // }
    await Serv.product.createProduct(product);

    _dt.rxProductList.st = [..._dt.rxProductList.st]..insert(0, product);

    await Future.delayed(400.milliseconds);
    RM.navigate.forceBack();
  }

  submit() => _dt.rxForm.submit();
}
