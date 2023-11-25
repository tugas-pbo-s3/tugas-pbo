part of '_index.dart';

class AdminCategoryListData {
  final rxTitle = 'Shoes Category List'.inj();

  final rxInt = 0.inj();

  final limit = Prov.category.st.limit;

  final rxSelectedId = Prov.category.st.rxSelectedId;

  final rxCategoryList = Prov.category.st.rxCategoryList;

  final rxCategoryDetail = Prov.category.st.rxCategoryFuture;

  final rxLoadMore = Prov.category.st.rxLoadMore;

  final rxHeightContainer = RM.inject<double>(() => 0.0);

  final rxFormInput = RM.injectForm(
    submit: () => Ctrl.adminCategoryList.createCategory(),
    autovalidateMode: AutovalidateMode.onUserInteraction,
  );

  final rxFormEdit = RM.inject(
    () => RM.injectForm(
      submit: () => Ctrl.adminCategoryList.updateCategory(),
      autovalidateMode: AutovalidateMode.always,
    ),
  );

  final rxNameInput = RM.injectTextEditing(validators: [
    Validate.isNotEmpty,
    Validate.minChars,
    Validate.alphaNumericSpace,
  ]);

  final rxNameEdit = RM.inject(
    () => RM.injectTextEditing(
      text: _dt.rxCategoryDetail.st!.name,
      autoDispose: false,
      validateOnTyping: true,
      validateOnLoseFocus: true,
      validators: [
        Validate.isNotEmpty,
        Validate.minChars,
        Validate.alphaNumericSpace,
      ],
    ),
  );
}
