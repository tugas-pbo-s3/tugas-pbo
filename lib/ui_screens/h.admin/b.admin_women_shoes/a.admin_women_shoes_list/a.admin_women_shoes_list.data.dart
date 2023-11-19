part of '_index.dart';

class AdminWomenShoesListData {
  final rxTitle = 'Women\'s Shoes List'.inj();

  final rxInt = 0.inj();

  final limit = Prov.product.st.limit;

  final colId = Prov.product.st.colId;

  final docId = 'w-shoes';

  final colId2 = 'women-shoes';

  final rxImages = RM.inject<Map<String, String>>(() => {});

  final rxIsEnd = Prov.product.st.rxIsEnd;

  final rxSelectedId = Prov.product.st.rxSelectedId;

  final rxProductList = Prov.product.st.rxProductList;

  final rxLoadMore = Prov.product.st.rxLoadMore;

  final rxProduct = Prov.product.st.rxProductFuture;

  final rxHeightContainer = RM.inject<double>(() => 0.0);

  final rxCategoryList = Prov.category.st.rxCategoryList;

  final rxCategoryLoader = Prov.category.st.rxLoadMore;

  static final List<int> listOfSizes = [35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45];
  static final List<String> listOfColors = [
    'blue',
    'black',
    'green',
    'red',
    'white',
    'grey',
    'brown',
    'yellow',
    'orange',
    'pink',
    'purple',
    'light green',
    'gold',
    'silver'
  ];

  final itemSizes = listOfSizes.map((size) => MultiSelectItem<int>(size, size.toString())).toList();
  final itemColors = listOfColors.map((color) => MultiSelectItem<String>(color, color.toString())).toList();
  final rxSelectedSizes = RM.inject<List<int>>(() => []);
  final rxSelectedColors = RM.inject<List<String>>(() => []);
  final rxShoesSizes = RM.inject<List<int>>(() => []);
  final rxShoesColors = RM.inject<List<String>>(() => []);
  final rxSizesValues = RM.inject(() => []);
  final rxColorsValues = RM.inject(() => []);

  final rxForm = RM.injectForm(
    submit: () async {
      await _ct.updateProduct();
    },
    autovalidateMode: AutovalidateMode.onUserInteraction,
  );

  final rxName = RM.inject(
    () => RM.injectTextEditing(
      text: _dt.rxProduct.st!.name,
      validateOnTyping: true,
      validators: [
        Validate.isNotEmpty,
        Validate.minChars,
        Validate.alphaNumericSpace,
      ],
    ),
  );

  final rxDescription = RM.inject(
    () => RM.injectTextEditing(
      text: _dt.rxProduct.st!.description,
      validateOnTyping: true,
      validators: [
        Validate.isNotEmpty,
        Validate.minChars,
      ],
    ),
  );

  final rxMerk = RM.inject(
    () => RM.injectTextEditing(
      text: _dt.rxProduct.st!.merk,
      validateOnTyping: true,
      validators: [
        Validate.isNotEmpty,
        Validate.minChars,
        Validate.alphaNumericSpace,
      ],
    ),
  );

  final rxPrice = RM.inject(
    () => RM.injectTextEditing(
      text: _dt.rxProduct.st!.price.toString(),
      validateOnTyping: true,
      validators: [
        Validate.isNotEmpty,
        Validate.isNumeric,
        Validate.isNotZero,
      ],
    ),
  );

  final rxQuantity = RM.inject(
    () => RM.injectTextEditing(
      text: _dt.rxProduct.st!.quantity.toString(),
      validateOnTyping: true,
      validators: [
        Validate.isNotEmpty,
        Validate.isNumeric,
        Validate.isNotZero,
      ],
    ),
  );

  final rxCategory = RM.inject(
    () => RM.injectFormField<String?>(
      _dt.rxProduct.st!.category.categoryId,
      validators: [Validate.isNotEmpty],
    ),
  );
}
