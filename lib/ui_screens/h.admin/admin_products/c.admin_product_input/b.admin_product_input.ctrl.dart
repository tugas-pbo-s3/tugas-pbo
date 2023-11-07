part of '_index.dart';

class AdminProductInputCtrl {
  init() => logxx.i(AdminProductInputCtrl, '...');

  action() => _dt.rxInt.setState((s) => s + 1);

  addToSelectedList(int listOfSizes) {
    _dt.rxListOfSelectedItem.st = [..._dt.rxListOfSelectedItem.st, listOfSizes];
  }

  Injected<bool> getIsSelected(int index) {
    final rxIsSelected = RM.inject(() => _dt.rxListOfSelectedItem.st.contains(_dt.listOfSizes[index]));
    return rxIsSelected;
  }

  createProduct() async {
    // final product = WomenShoes(
    //   category: _dt.rxCategory.value ?? '',
    //   productId: const Uuid().v4(),
    //   name: _dt.rxName.value,
    //   description: _dt.rxDescription.value,
    //   price: int.parse(_dt.rxPrice.value),
    //   quantity: int.parse(_dt.rxQuantity.value),
    //   createdAt: DateTime.now().toString(),
    //   colors: colors,
    //   sizes: sizes,
    //   merk: _dt.rxMerk.value,
    // );
    // _dt.products.st = [..._dt.products.st]..insert(0, product);
    for (var p in _dt.products.st) {
      // await Serv.product.createProduct(product);

      _dt.rxProductList.st = [..._dt.rxProductList.st]..insert(0, p);
    }

    await Future.delayed(400.milliseconds);
    RM.navigate.forceBack();
  }
}
