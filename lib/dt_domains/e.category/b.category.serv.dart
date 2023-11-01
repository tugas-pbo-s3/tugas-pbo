part of '_index.dart';

class CategoryServ {
  init() => logxx.i(CategoryServ, 'CategoryServ init ...');
  CategoryProv get pv => Prov.category.st;

  setSelectedId(String id) {
    pv.rxSelectedId.refresh();
    pv.rxSelectedId.setState((s) => id);
  }

  addToList(List<Category> moreCategories) {
    pv.rxCategoryList.setState((s) => [...s, ...moreCategories]);
  }

  Future<void> createCategory(Category category) async {
    try {
      await Repo.category.st.createCategory(category);
    } catch (e) {
      rethrow;
    }
  }

  // --- read category ---

  void initCategoryDetail() {
    pv.rxCategoryDetail.stateAsync = handleCategoryDetail();
  }

  Future<Category> handleCategoryDetail() async {
    try {
      final category = await readCategoryDetail();
      return category;
    } catch (e) {
      return Fun.handleDummyException(e);
    }
  }

  Future<Category> readCategoryDetail() async {
    try {
      final category = await Repo.category.st.readCategory(pv.rxSelectedId.st);
      return category;
    } catch (e) {
      rethrow;
    }
  }

  // --- read categories ---

  Future<dynamic> initCategoryLoader() async {
    await pv.rxCategoryList.refresh();
    pv.rxCategoryLoader.stateAsync = pv.rxCategoryLoader.setState((s) => handleCategoryLoader());
  }

  Future<dynamic> nextCategoryLoader() async {
    pv.rxCategoryLoader.stateAsync = pv.rxCategoryLoader.setState((s) => handleCategoryLoader());
  }

  Future<dynamic> handleCategoryLoader() async {
    try {
      final initRxLoadMore = await readCategoryLoader();
      pv.rxCategoryLoader.setToHasData(initRxLoadMore);
    } catch (e) {
      pv.rxCategoryLoader.setToHasError(e);
      return Fun.handleException(e);
    }
  }

  Future<dynamic> readCategoryLoader() async {
    try {
      // await createSeederCategories();
      final categories = await Repo.category.st.readCategories();
      return categories;
    } catch (e) {
      rethrow;
    }
  }
}
