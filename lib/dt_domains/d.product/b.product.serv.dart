part of '_index.dart';

class ProductServ {
  init() => logxx.i(ProductServ, '.....');

  setSelectedId(String id) {
    _pv.rxSelectedId.refresh();
    _pv.rxSelectedId.setState((s) => id);
  }

  addToList(List<Product> moreProducts) {
    _pv.rxProductList.setState((s) => [...s, ...moreProducts]);
  }

  deleteOneOfProductList() {
    _pv.rxProductList.setState((s) {
      final index = s.indexWhere((element) => element.productId == _pv.rxSelectedId.st);
      return s.removeAt(index);
    });
  }

  updateOneOfProductList(Product p) {
    _pv.rxProductList.setState((s) {
      final index = s.indexWhere((element) => element.productId == _pv.rxSelectedId.st);
      return s[index] = p;
    });
  }

  void initProductDetail() {
    _pv.rxProductDetail.stateAsync = handleProductDetail();
  }

  Future<Product> handleProductDetail() async {
    try {
      final product = await readProductDetail();
      return product;
    } catch (e) {
      return Fun.handleDummyException(e);
    }
  }

  Future<Product> readProductDetail() async {
    try {
      final product = await Repo.product.st.readProduct(_pv.rxSelectedId.st);
      return product;
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> initProductsLoader() async {
    await _pv.rxProductList.refresh();
    _pv.rxProductLoader.stateAsync = _pv.rxProductLoader.setState((s) => handleProductLoader());
  }

  Future<dynamic> nextProductLoader() async {
    _pv.rxProductLoader.stateAsync = _pv.rxProductLoader.setState((s) => handleProductLoader());
  }

  Future<dynamic> handleProductLoader() async {
    try {
      final initRxLoadMore = await readProductLoader();
      _pv.rxProductLoader.setToHasData(initRxLoadMore);
    } catch (e) {
      _pv.rxProductLoader.setToHasError(e);
      return Fun.handleException(e);
    }
  }

  Future<dynamic> readProductLoader() async {
    try {
      final products = await Repo.product.st.readProducts();
      return products;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> createProduct(Product product, XFile? file) async {
    try {
      await Repo.product.st.createProduct(product, file);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> deleteProduct() async {
    try {
      await Repo.product.st.deleteProduct(_pv.rxSelectedId.st);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> updateProduct(Product product, XFile? file) async {
    try {
      await Repo.product.st.updateProduct(product, _pv.rxSelectedId.st, file);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> deleteAllProducts() async {
    try {
      await Repo.product.st.deleteAllProducts();
    } catch (e) {
      rethrow;
    }
  }
}
