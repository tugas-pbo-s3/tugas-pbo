part of '_index.dart';

class AdminCategoryListCtrl {
  init() => logxx.i(AdminCategoryListCtrl, '...');

  action() => _dt.rxInt.setState((s) => s + 1);

  Future<void> refresh() async {
    Serv.category.refreshCategories();
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
    Serv.category.setSelectedId(id);
    nav.to(Routes.adminCategoryDetail);
  }

  createCategory() async {
    final category = Category(
      categoryId: const Uuid().v4(),
      name: _dt.rxName.value,
      createdAt: DateTime.now().toString(),
    );
    await Serv.category.createCategory(category);
    _dt.rxCategoryList.st = [..._dt.rxCategoryList.st]..insert(0, category);

    await Future.delayed(400.milliseconds);
    RM.navigate.back();
  }

  submit() {
    _dt.rxForm.submit();
  }
}
