part of '_index.dart';

class AdminWomenShoesInputData {
  final rxTitle = 'Women\'s Shoes Input'.inj();

  final rxInt = 0.inj();

  final colId = Prov.women.st.colId;

  final docId = 'w-shoes';

  final colId2 = 'women-shoes';

  final rxProductList = Prov.women.st.rxProductList;

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
    ShoesSizes(id: 1, size: 35),
    ShoesSizes(id: 2, size: 36),
    ShoesSizes(id: 3, size: 37),
    ShoesSizes(id: 4, size: 38),
    ShoesSizes(id: 5, size: 39),
    ShoesSizes(id: 6, size: 40),
    ShoesSizes(id: 7, size: 41),
    ShoesSizes(id: 8, size: 42),
    ShoesSizes(id: 9, size: 43),
    ShoesSizes(id: 10, size: 44),
    ShoesSizes(id: 11, size: 45),
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

  final products = RM.inject<List<WomenShoes>>(() => []);

  final rxProduct = RM.inject<WomenShoes?>(() => null);

  final rxForm = RM.injectForm(
    submit: () => Ctrl.adminWomenShoesInput.createProduct(),
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
