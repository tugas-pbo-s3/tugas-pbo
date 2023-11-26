part of '_index.dart';

class AdminKidsShoesInputData {
  final rxTitle = 'Kids\'s Shoes Input'.inj();

  final rxInt = 0.inj();

  final colId = _pv.colId;

  final docId = _pv.docId1;

  final colId2 = _pv.colId2;

  final rxProductList = _pv.rxProductList;

  final rxGeneratedId = RM.inject<String>(() => '');

  final rxCategoryList = Prov.category.st.rxCategoryList;

  final rxCategoryFuture = Prov.category.st.rxCategoryFuture;

  final rxCategoryLoader = Prov.category.st.rxLoadMore;

  final rxSelectedSizes = RM.inject<List<ShoesSizes>>(() => []);
  final rxSelectedColors = RM.inject<List<ShoesColors>>(() => []);

  final rxShoesSizes = RM.inject<List<int>>(() => []);
  final rxShoesColors = RM.inject<List<String>>(() => []);

  final rxSizesValues = RM.inject(() => []);
  final rxColorsValues = RM.inject(() => []);
  final rxCustomSelectedColor = RM.inject<Color>(() => Colors.white);

  final rxImages = RM.inject<Map<String, String>>(() => {});

  static final List<ShoesSizes> listOfSizes = [
    ShoesSizes(id: 1, size: 25),
    ShoesSizes(id: 2, size: 26),
    ShoesSizes(id: 3, size: 27),
    ShoesSizes(id: 4, size: 28),
    ShoesSizes(id: 5, size: 29),
    ShoesSizes(id: 6, size: 30),
    ShoesSizes(id: 7, size: 31),
    ShoesSizes(id: 8, size: 32),
    ShoesSizes(id: 9, size: 33),
    ShoesSizes(id: 10, size: 34),
    ShoesSizes(id: 11, size: 35),
    ShoesSizes(id: 12, size: 36),
    ShoesSizes(id: 13, size: 37),
    ShoesSizes(id: 14, size: 38),
    ShoesSizes(id: 15, size: 39),
    ShoesSizes(id: 16, size: 40),
    ShoesSizes(id: 17, size: 41),
    ShoesSizes(id: 18, size: 42),
    ShoesSizes(id: 19, size: 43),
    ShoesSizes(id: 20, size: 44),
  ];

  static final List<ShoesColors> listOfColors = [
    ShoesColors(id: 1, colorText: 'blue', color: Colors.blue),
    ShoesColors(id: 2, colorText: 'black', color: Colors.black),
    ShoesColors(id: 3, colorText: 'white', color: Colors.white),
    ShoesColors(id: 4, colorText: 'grey', color: Colors.grey),
    ShoesColors(id: 5, colorText: 'green', color: Colors.green),
    ShoesColors(id: 6, colorText: 'yellow', color: Colors.yellow),
    ShoesColors(id: 7, colorText: 'red', color: Colors.red),
    ShoesColors(id: 8, colorText: 'orange', color: Colors.orange),
    ShoesColors(id: 9, colorText: 'pink', color: Colors.pink),
    ShoesColors(id: 10, colorText: 'purple', color: Colors.purple),
  ];

  final itemSizes = listOfSizes.map((size) => MultiSelectItem<ShoesSizes>(size, size.size.toString())).toList();

  final itemColors =
      listOfColors.map((color) => MultiSelectItem(color, color.colorText ?? color.color.toString())).toList();

  final products = RM.inject<List<KidsShoes>>(() => []);

  final rxProduct = RM.inject<KidsShoes?>(() => null);

  final rxForm = RM.injectForm(
    submit: () => _ct.createProduct(),
    autovalidateMode: AutovalidateMode.onUserInteraction,
  );

  final rxName = RM.injectTextEditing(
      validators: [Validate.isNotEmpty, Validate.minChars, Validate.alphaNumericSpace, Validate.maxChars]);

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
