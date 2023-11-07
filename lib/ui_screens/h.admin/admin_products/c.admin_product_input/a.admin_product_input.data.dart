part of '_index.dart';

class AdminProductInputData {
  final rxTitle = 'AdminProductInput'.inj();

  final rxInt = 0.inj();

  final rxProductList = Prov.product.st.rxProductList;

  final rxCategoryList = Prov.category.st.rxCategoryList;

  final rxCategoryLoader = Prov.category.st.rxLoadMore;

  final rxIsSelected = false.inj();

  // List<String> listOFSelectedItem = [];
  // String selectedText = "";

  final rxSelectedList = RM.inject(() => []);

  final listOfSizes = [35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45];
  final listOfBool = RM.inject(() => List.generate(11, (index) => false));

  final rxListOfSelectedItem = RM.inject(() => []);

  final rxSelectedText = RM.inject(() => '');

  final products = RM.inject<List<WomenShoes>>(() => []);

  final rxForm = RM.injectForm(
    submit: () => Ctrl.adminProductInput.createProduct(),
    autovalidateMode: AutovalidateMode.onUserInteraction,
  );

  final rxName = RM.injectTextEditing(validators: [
    Validate.isNotEmpty,
    Validate.minChars,
    Validate.alphaNumericSpace,
  ]);

  final rxDescription = RM.injectTextEditing(validators: [
    Validate.isNotEmpty,
    Validate.minChars,
    Validate.alphaNumericSpace,
  ]);

  final rxMerk = RM.injectTextEditing(validators: [
    Validate.isNotEmpty,
    Validate.minChars,
    Validate.alphaNumericSpace,
  ]);

  final rxPrice = RM.injectTextEditing(validators: [
    Validate.isNotEmpty,
    Validate.isNumeric,
    Validate.isNotZero,
  ]);

  final rxQuantity = RM.injectTextEditing(validators: [
    Validate.isNotEmpty,
    Validate.isNumeric,
    Validate.isNotZero,
  ]);

  final rxCategory = RM.injectFormField<String?>(
    null,
    validators: [Validate.isNotEmpty],
  );
}
