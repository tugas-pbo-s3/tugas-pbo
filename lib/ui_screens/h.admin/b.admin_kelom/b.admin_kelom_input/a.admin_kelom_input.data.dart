part of '_index.dart';

class AdminWomenShoesInputData {
  final rxTitle = 'Kelom Input'.inj();

  final rxInt = 0.inj();

  final colId = Prov.kelom.st.colId;

  final docId = 'kelom';

  final colId2 = 'kelom-geulis';

  final rxProductList = Prov.kelom.st.rxProductList;

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
    ProductColors(id: 1, colorText: 'biru', color: Colors.blue),
    ProductColors(id: 2, colorText: 'hitam', color: Colors.black),
    ProductColors(id: 3, colorText: 'putih', color: Colors.white),
    ProductColors(id: 4, colorText: 'abu', color: Colors.grey),
    ProductColors(id: 5, colorText: 'hijau', color: Colors.green),
    ProductColors(id: 6, colorText: 'kuning', color: Colors.yellow),
    ProductColors(id: 7, colorText: 'merah', color: Colors.red),
    ProductColors(id: 8, colorText: 'oren', color: Colors.orange),
    ProductColors(id: 9, colorText: 'merah muda', color: Colors.pink),
    ProductColors(id: 10, colorText: 'ungu', color: Colors.purple),
  ];

  final itemSizes = listOfSizes.map((size) => MultiSelectItem<ProductSizes>(size, size.size.toString())).toList();

  final itemColors =
      listOfColors.map((color) => MultiSelectItem(color, color.colorText ?? color.color.toString())).toList();

  final products = RM.inject<List<Kelom>>(() => []);

  final rxProduct = RM.inject<Kelom?>(() => null);

  final rxForm = RM.injectForm(
    submit: () => Ctrl.adminWomenShoesInput.createProduct(),
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
