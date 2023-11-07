part of '_index.dart';

class AdminCategoryDetailCtrl {
  init() => logxx.i(AdminCategoryDetailCtrl, '...');

  action() => _dt.rxInt.setState((s) => s + 1);

  delete() async {
    RM.navigate.toDialog(
      const Center(child: CircularProgressIndicator()),
      barrierDismissible: false,
      barrierColor: Colors.black54,
    );
    await Serv.category.deleteCategory('${_dt.rxCategoryFuture.st?.categoryId}');
    await Serv.category.deleteOneOfCategory();

    RM.navigate.back();
    RM.navigate.back();
  }

  Future<void> updateCategory() async {
    final c = Category(
      categoryId: _dt.rxCategoryFuture.st!.categoryId,
      name: _dt.rxName.st.value,
      createdAt: _dt.rxCategoryFuture.st!.createdAt,
      updatedAt: DateTime.now().toString(),
    );

    try {
      await Serv.category.updateCategory(c);
      _dt.rxCategoryFuture.setState((s) => c);
      Serv.category.updateOneOfCategoryList(c);
      Future.delayed(400.milliseconds);
      RM.navigate.back();
    } catch (e) {
      Fun.handleException(e);
    }
  }

  submit() {
    _dt.rxForm.submit();
  }
}
