part of '_index.dart';

class AdminCategoryListData {
  final rxTitle = 'AdminCategoryList'.inj();

  final rxInt = 0.inj();

  final limit = Prov.category.st.limit;

  final rxIsEnd = Prov.category.st.rxIsEnd;

  final rxSelectedId = Prov.category.st.rxSelectedId;

  final rxCategoryList = Prov.category.st.rxCategoryList;

  final rxLoadMore = Prov.category.st.rxLoadMore;

  final rxForm = RM.injectForm(
    submit: () => Ctrl.adminCategoryList.createCategory(),
    autovalidateMode: AutovalidateMode.onUserInteraction,
  );

  final rxName = RM.injectTextEditing(validators: [
    Validate.isNotEmpty,
    Validate.minChars,
    Validate.alphaNumericSpace,
  ]);
}
