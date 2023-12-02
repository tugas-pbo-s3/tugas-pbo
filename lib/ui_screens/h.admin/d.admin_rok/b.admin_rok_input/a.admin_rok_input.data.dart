part of '_index.dart';

class AdminKidsShoesInputData {
  final rxTitle = 'Rok Input'.inj();

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
    ProductSizes(id: 1, size: 0),
    // ProductSizes(id: 2, size: 26),
    // ProductSizes(id: 3, size: 27),
    // ProductSizes(id: 4, size: 28),
    // ProductSizes(id: 5, size: 29),
    // ProductSizes(id: 6, size: 30),
    // ProductSizes(id: 7, size: 31),
    // ProductSizes(id: 8, size: 32),
    // ProductSizes(id: 9, size: 33),
    // ProductSizes(id: 10, size: 34),
    // ProductSizes(id: 11, size: 35),
    // ProductSizes(id: 12, size: 36),
    // ProductSizes(id: 13, size: 37),
    // ProductSizes(id: 14, size: 38),
    // ProductSizes(id: 15, size: 39),
    // ProductSizes(id: 16, size: 40),
    // ProductSizes(id: 17, size: 41),
    // ProductSizes(id: 18, size: 42),
    // ProductSizes(id: 19, size: 43),
    // ProductSizes(id: 20, size: 44),
  ];
  // static final List<ProductSizes> listOfSizes = [
  //   ProductSizes(id: 1, size: 25),
  //   ProductSizes(id: 2, size: 26),
  //   ProductSizes(id: 3, size: 27),
  //   ProductSizes(id: 4, size: 28),
  //   ProductSizes(id: 5, size: 29),
  //   ProductSizes(id: 6, size: 30),
  //   ProductSizes(id: 7, size: 31),
  //   ProductSizes(id: 8, size: 32),
  //   ProductSizes(id: 9, size: 33),
  //   ProductSizes(id: 10, size: 34),
  //   ProductSizes(id: 11, size: 35),
  //   ProductSizes(id: 12, size: 36),
  //   ProductSizes(id: 13, size: 37),
  //   ProductSizes(id: 14, size: 38),
  //   ProductSizes(id: 15, size: 39),
  //   ProductSizes(id: 16, size: 40),
  //   ProductSizes(id: 17, size: 41),
  //   ProductSizes(id: 18, size: 42),
  //   ProductSizes(id: 19, size: 43),
  //   ProductSizes(id: 20, size: 44),
  // ];

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

  final products = RM.inject<List<Rok>>(() => []);

  final rxProduct = RM.inject<Rok?>(() => null);

  final rxForm = RM.injectForm(
    submit: () => _ct.createProduct(),
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
