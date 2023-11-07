part of '_index.dart';

class AdminCategoryDetailData {
  final rxTitle = 'AdminCategoryDetail'.inj();

  final rxInt = 0.inj();

  final rxCategoryFuture = Prov.category.st.rxCategoryFuture;

  final rxCategorylist = Prov.category.st.rxCategoryList;

  final rxForm = RM.injectForm(
    submit: () => Ctrl.adminCategoryDetail.updateCategory(),
    autovalidateMode: AutovalidateMode.onUserInteraction,
  );

  final rxSelectedId = Prov.category.st.rxSelectedId;

  final rxName = RM.inject(
    () => RM.injectTextEditing(
      text: _dt.rxCategoryFuture.st!.name,
      validators: [
        Validate.isNotEmpty,
        Validate.minChars,
        Validate.alphaNumericSpace,
      ],
    ),
  );
}
