part of '_index.dart';

class AdminCategoryListCtrl {
  init() => logxx.i(AdminCategoryListCtrl, '...');

  action() => _dt.rxInt.setState((s) => s + 1);

  Future<void> refresh() async {
    Serv.category.refreshCategories();
  }

  isCategoryDetail() {
    if (_dt.rxHeightContainer.st == 0) {
      _dt.rxHeightContainer.st = 500;
      logx.w(_dt.rxSelectedId.st);
    } else {
      logx.w(_dt.rxSelectedId.st);
      _dt.rxHeightContainer.st = 0;
    }
  }

  deleteCategories() async {
    await Serv.category.deleteAllCategory();
    Prov.category.st.rxIndex.setState((s) => 0);
    Prov.category.st.rxCategoryList.setState((s) => s.clear());
    Future.delayed(800.milliseconds);
  }

  Future<void> loadMore() async {
    Serv.category.readCategories();
  }

  select(String id) {
    _dt.rxHeightContainer.refresh();
    Serv.category.setSelectedId(id);
    _sv.readCategory();
    isCategoryDetail();
  }

  Future<void> updateCategory() async {
    final c = Category(
      categoryId: _dt.rxCategoryDetail.st!.categoryId,
      name: _dt.rxNameEdit.st.value,
      createdAt: _dt.rxCategoryDetail.st!.createdAt,
      updatedAt: DateTime.now().toString(),
    );

    try {
      await Serv.category.updateCategory(c);
      _dt.rxCategoryDetail.setState((s) => c);
      Serv.category.updateOneOfCategoryList(c);
      Future.delayed(400.milliseconds);
      RM.navigate.back();
    } catch (e) {
      Fun.handleException(e);
    }
  }

  createCategory() async {
    final category = Category(
      categoryId: const Uuid().v4(),
      name: _dt.rxNameInput.value,
      createdAt: DateTime.now().toString(),
    );
    await Serv.category.createCategory(category);
    _dt.rxCategoryList.st = [..._dt.rxCategoryList.st]..insert(0, category);

    await Future.delayed(400.milliseconds);
    RM.navigate.back();
  }

  submitInput() {
    _dt.rxFormInput.submit();
  }

  submitEdit() {
    _dt.rxFormEdit.st.submit();
  }
}
