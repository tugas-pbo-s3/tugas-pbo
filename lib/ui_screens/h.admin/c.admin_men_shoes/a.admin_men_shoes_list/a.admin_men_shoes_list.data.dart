part of '_index.dart';

class AdminMenShoesListData {
  final rxTitle = 'Men\'s Shoes List'.inj();

  final rxInt = 0.inj();

  final limit = _pv.limit;

  final colId = _pv.colId;

  final docId = _pv.docId1;

  final colId2 = _pv.colId2;

  final rxImages = RM.inject<Map<String, String>>(() => {});

  final rxIsEnd = _pv.rxIsEnd;

  final rxSelectedId = _pv.rxSelectedId;

  final rxProductList = _pv.rxProductList;

  final rxLoadMore = _pv.rxLoadMore;

  final rxProduct = _pv.rxProductFuture;

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
        Validate.maxChars,
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
