part of '_index.dart';

class CategoryServ {
  init() => logxx.i(CategoryServ, 'CategoryServ init ...');
  refreshCategories() {
    _pv.rxIsEnd.st = false;
    _pv.rxCategoryList.st = [];
    _pv.rxSelectedId.st = '';
    readCategories();
  }

  readCategories() {
    _pv.rxLoadMore.stateAsync = Repo.category.st.readCategories(
      Prov.category.st.rxCategoryList.st.isEmpty
          ? '9999-99-99 99:99:99.999'
          : Prov.category.st.rxCategoryList.st.last.createdAt,
    );
  }

  readCategory() {
    _pv.rxCategoryFuture.stateAsync = Repo.category.st.readCategory();
  }

  setSelectedId(String id) {
    _pv.rxSelectedId.refresh();
    _pv.rxSelectedId.setState((s) => id);
  }

  initCategories() {
    _pv.rxCategoryList.refresh();
    _pv.rxSelectedId.refresh();

    readCategories();
  }

  addToList(List<Category> moreCategory) {
    _pv.rxCategoryList.st = [..._pv.rxCategoryList.st, ...moreCategory];
    if (moreCategory.length < _pv.limit) {
      _pv.rxIsEnd.st = true;
    }
  }

  // ---- ---- delete ---- ----

  Future<void> deleteAllCategoryDataAndImage() async {
    for (var element in _pv.rxCategoryList.st) {
      _pv.rxSelectedId.st = element.categoryId;
      await deleteCategory(_pv.rxSelectedId.st);
    }
    _pv.rxIndex.setState((s) => 0);
    _pv.rxCategoryList.setState((s) => s.clear());
  }

  deleteOneOfCategory() {
    _pv.rxCategoryList.st = [..._pv.rxCategoryList.st]
      ..removeWhere((element) => element.categoryId == _pv.rxSelectedId.st);
  }

  Future<void> deleteAllCategory() {
    return Repo.category.st.deleteAllCategories();
  }

  Future<void> deleteCategory(String selectedId) {
    return Repo.category.st.deleteCategory(selectedId);
  }

  // ---- ---- create ---- ----

  Future<void> createCategory(Category category) {
    return Repo.category.st.createCategory(category);
  }

  // ---- ---- update ---- ----

  Future<void> updateCategory(Category category) {
    return Repo.category.st.updateCategory(category);
  }

  updateOneOfCategoryList(Category p) {
    _pv.rxCategoryList.setState(
      (s) {
        final index = s.indexWhere((element) => element.categoryId == _pv.rxSelectedId.st);
        return s[index] = p;
      },
    );
  }
}
