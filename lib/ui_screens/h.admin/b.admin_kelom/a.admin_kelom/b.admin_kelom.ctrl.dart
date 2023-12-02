part of '_index.dart';

class AdminKelomCtrl {
  init() {
    logxx.i(AdminKelomCtrl, '...');
    Serv.category.readCategories();
  }

  action() => _dt.rxInt.setState((s) => s + 1);

  setSizesValues(sizeList) {
    _dt.rxSizesValues.st = sizeList;
  }

  List<int> getSelectedSizes() {
    List<int> sizes = [];
    _dt.rxSelectedSizes.st = [..._dt.rxSizesValues.st];
    for (var s in _dt.rxSelectedSizes.st) {
      sizes.add(s);
    }
    return sizes;
  }

  addToListSizes() {
    _dt.rxShoesSizes.st = getSelectedSizes();
    logx.i('shoes size: ${_dt.rxShoesSizes.st}');
  }

  setColorsValues(colorList) {
    _dt.rxColorsValues.st = colorList;
  }

  List<String> getSelectedColors() {
    List<String> colors = [];
    _dt.rxSelectedColors.st = [..._dt.rxColorsValues.st];
    for (var s in _dt.rxSelectedColors.st) {
      colors.add(s);
    }
    return colors;
  }

  addToListColors() {
    _dt.rxShoesColors.st = getSelectedColors();
    logx.i('shoes size: ${_dt.rxShoesColors.st}');
  }

  refreshTextField() {
    _dt.rxName.refresh();
    _dt.rxPrice.refresh();
    _dt.rxDescription.refresh();
    _dt.rxMerk.refresh();
    _dt.rxQuantity.refresh();
    _dt.rxCategory.refresh();
  }

  isProductDetail() {
    if (_dt.rxHeightContainer.st == 0) {
      _dt.rxHeightContainer.st = 500;
      logx.w(_dt.rxSelectedId.st);
    } else {
      logx.w(_dt.rxSelectedId.st);
      _dt.rxHeightContainer.st = 0;
    }
  }

  Future<void> loadMore() async {
    Serv.kelom.readAllProducts();
  }

  select(String id) {
    _dt.rxHeightContainer.refresh();
    Serv.kelom.setSelectedId(id);

    _sv.readProduct();

    isProductDetail();
  }

  submit() => _dt.rxForm.submit();

  Future<void> pickImages() async {
    List<String> pathImages = [];
    Map<String, String> mapImages = {};
    // _dt.rxGeneratedId.st = const Uuid().v4();
    final id = _dt.rxSelectedId.st;
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

    logx.i('ini imageeeeee ${_dt.rxImages.st}');
    logx.i('ini imageeeeee ${_dt.rxImages.st.length}');
  }

  List<String> isShoesColorEmpty() {
    if (_dt.rxShoesColors.st.isEmpty) {
      return _dt.rxProduct.st!.colors;
    } else {
      return _dt.rxShoesColors.st;
    }
  }

  List<int> isShoesSizeEmpty() {
    if (_dt.rxShoesSizes.st.isEmpty) {
      return _dt.rxProduct.st!.sizes;
    } else {
      return _dt.rxShoesSizes.st;
    }
  }

  Future<void> updateProduct() async {
    logx.e(_dt.rxCategory.st.value.toString());
    final indexCategory = _dt.rxCategoryList.st.indexWhere((element) => element.categoryId == _dt.rxCategory.st.value);
    logx.wtf(indexCategory.toString());
    logx.wtf(_dt.rxCategory.st.value.toString());
    final category = _dt.rxCategoryList.st[indexCategory];
    logx.wtf(category.toString());
    final wShoes = Kelom(
      category: Category(
        categoryId: category.categoryId,
        name: category.name,
        createdAt: category.createdAt,
        updatedAt: category.updatedAt,
      ),
      productId: _dt.rxProduct.st!.productId,
      name: _dt.rxName.st.value,
      description: _dt.rxDescription.st.value,
      price: int.parse(_dt.rxPrice.st.value),
      quantity: int.parse(_dt.rxQuantity.st.value),
      createdAt: _dt.rxProduct.st!.createdAt,
      updatedAt: DateTime.now().toString(),
      colors: isShoesColorEmpty(),
      sizes: isShoesSizeEmpty(),
      merk: _dt.rxMerk.st.value,
      imageUrl: _dt.rxImages.st.isEmpty ? _dt.rxProduct.st?.imageUrl : _dt.rxImages.st,
    );

    logx.e(wShoes.name);
    try {
      logx.wtf(_dt.rxCategory.st.value.toString());
      await Serv.kelom.updateProduct(wShoes, _dt.rxImages.st);
      _dt.rxProduct.setState((s) => wShoes);
      await _sv.readProduct();
      _sv.updateOneOfProductList(wShoes);
      RM.navigate.back();
    } catch (e) {
      Fun.handleException(e);
    }
  }

  delete() async {
    RM.navigate.toDialog(
      const Center(child: CircularProgressIndicator()),
      barrierDismissible: false,
      barrierColor: Colors.black54,
    );
    await _sv.deleteProduct();
    await _sv.deleteOneOfProduct();
    // Prov.cart.st.rxCart.st.listCartedShoes = [...Prov.cart.st.rxCart.st.listCartedShoes]
    //   ..removeWhere((element) => element.shoes.productId == _dt.rxSelectedId.st);
    // for (var c in Prov.cart.st.rxCart.st.listCartedShoes) {
    //   if (c.cartedId == _dt.rxSelectedId.st) {
    //     Serv.cart.removeCart(id: _dt.rxSelectedId.st);
    //   }
    // }

    RM.navigate.back();
    RM.navigate.back();
  }

  showDeleteDialog() {
    nav.toCupertinoDialog(CupertinoAlertDialog(
      title: const Text('Confirmation'),
      content: const Text('Are you sure to delete these items?'),
      actions: [
        TextButton(
          onPressed: () {
            nav.back();
          },
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            nav.back();
            delete();
          },
          child: const Text(
            'Delete',
            style: TextStyle(color: Colors.red),
          ),
        )
      ],
    ));
  }
}
