part of '_index.dart';

class AdminKidsShoesInputCtrl {
  init() => logxx.i(AdminKidsShoesInputCtrl, '...');

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
  }

  addToListColors() {
    _dt.rxShoesColors.st = getSelectedColors();
  }

  uploadImages() async {
    await _sv.uploadImages(_dt.rxImages.st);
  }

  Future<void> pickImages() async {
    List<String> pathImages = [];
    Map<String, String> mapImages = {};
    _dt.rxGeneratedId.st = const Uuid().v4();
    final id = _dt.rxGeneratedId.st;
    final pickedFiles = await ImagePicker().pickMultiImage();
    for (var i in pickedFiles) {
      pathImages.add(i.path);
    }

    pathImages.asMap().forEach((key, value) {
      mapImages['${_dt.colId}/${_dt.docId}/${_dt.colId2}/$id/$id-${key.toString()}'] = value;
    });
    _dt.rxImages.st = mapImages;
  }

  createProduct() async {
    final indexCategory = _dt.rxCategoryList.st.indexWhere((element) => element.categoryId == _dt.rxCategory.value);
    final category = _dt.rxCategoryList.st[indexCategory];
    final kShoes = KidsShoes(
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

    await _sv.createProduct(kShoes);

    _dt.rxProductList.st = [..._dt.rxProductList.st]..insert(0, kShoes);

    await Future.delayed(400.milliseconds);
    RM.navigate.forceBack();
  }

  submit() => _dt.rxForm.submit();
}
