part of '_index.dart';

class AdminMenShoesInputData {
  final rxTitle = 'Men\'s Shoes Input'.inj();

  final rxInt = 0.inj();

  final colId = _pv.colId;

  final docId = _pv.docId1;

  final colId2 = _pv.colId2;

  final rxProductList = _pv.rxProductList;

  final rxGeneratedId = RM.inject<String>(() => '');

  final rxCategoryList = Prov.category.st.rxCategoryList;

  final rxCategoryFuture = Prov.category.st.rxCategoryFuture;

  final rxCategoryLoader = Prov.category.st.rxLoadMore;

  final rxSelectedSizes = RM.inject<List<ProductSizes>>(() => []);
  final rxSelectedColors = RM.inject<List<ProductColors>>(() => []);

  final rxShoesSizes = RM.inject<List<int>>(() => []);
  final rxShoesColors = RM.inject<List<String>>(() => []);

  final rxSizesValues = RM.inject(() => []);
  final rxColorsValues = RM.inject(() => []);
  final rxCustomSelectedColor = RM.inject<Color>(() => Colors.white);

  final rxImages = RM.inject<Map<String, String>>(() => {});

  static final List<ProductSizes> listOfSizes = [
    ProductSizes(id: 1, size: 35),
    ProductSizes(id: 2, size: 36),
    ProductSizes(id: 3, size: 37),
    ProductSizes(id: 4, size: 38),
    ProductSizes(id: 5, size: 39),
    ProductSizes(id: 6, size: 40),
    ProductSizes(id: 7, size: 41),
    ProductSizes(id: 8, size: 42),
    ProductSizes(id: 9, size: 43),
    ProductSizes(id: 10, size: 44),
    ProductSizes(id: 11, size: 45),
  ];

  static final List<ProductColors> listOfColors = [
    ProductColors(id: 1, colorText: 'blue', color: Colors.blue),
    ProductColors(id: 2, colorText: 'black', color: Colors.black),
    ProductColors(id: 3, colorText: 'white', color: Colors.white),
    ProductColors(id: 4, colorText: 'grey', color: Colors.grey),
    ProductColors(id: 5, colorText: 'green', color: Colors.green),
    ProductColors(id: 6, colorText: 'yellow', color: Colors.yellow),
    ProductColors(id: 7, colorText: 'red', color: Colors.red),
    ProductColors(id: 8, colorText: 'orange', color: Colors.orange),
    ProductColors(id: 9, colorText: 'pink', color: Colors.pink),
    ProductColors(id: 10, colorText: 'purple', color: Colors.purple),
  ];

  final itemSizes = listOfSizes.map((size) => MultiSelectItem<ProductSizes>(size, size.size.toString())).toList();

  final itemColors =
      listOfColors.map((color) => MultiSelectItem(color, color.colorText ?? color.color.toString())).toList();

  final products = RM.inject<List<Kebaya>>(() => []);

  final rxProduct = RM.inject<Kebaya?>(() => null);

  final rxForm = RM.injectForm(
    submit: () => Ctrl.adminMenShoesInput.createProduct(),
    autovalidateMode: AutovalidateMode.onUserInteraction,
  );

  final rxName = RM.injectTextEditing(
    validators: [
      Validate.isNotEmpty,
      Validate.minChars,
      Validate.maxChars,
    ],
  );

  final rxDescription = RM.injectTextEditing(validators: [
    Validate.isNotEmpty,
    Validate.minChars,
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
