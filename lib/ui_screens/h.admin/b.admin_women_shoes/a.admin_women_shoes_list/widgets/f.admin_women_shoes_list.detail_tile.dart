part of '../_index.dart';

class AdminWomenShoesListDetailTile extends StatelessWidget {
  final WomenShoes? womenShoes;
  const AdminWomenShoesListDetailTile({
    super.key,
    required this.womenShoes,
    required this.image,
  });

  final Map<String, String>? image;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBoxH(55),
          SizedBox(
            height: 100,
            child: image!.values.isEmpty
                ? Container(
                    height: 100,
                    width: 100,
                    color: Colors.grey.withOpacity(0.2),
                    child: const Icon(Icons.image_not_supported),
                  )
                : SingleChildScrollView(
                    child: MediaQuery.of(context).size.width < 400
                        ? Center(
                            child: Container(
                              width: 100,
                              height: 100,
                              padding: const EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white,
                                ),
                              ),
                              child: Image.network(
                                '${image!.values.firstOrNull}',
                                fit: BoxFit.cover,
                              ),
                            ),
                          )
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              for (var i in image!.values)
                                Container(
                                  height: 100,
                                  width: 100,
                                  padding: const EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.white,
                                    ),
                                  ),
                                  child: Image.network(
                                    i,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                            ],
                          ),
                  ),
          ),
          OutlinedButton(
            onPressed: () {
              // _ct.pickImages();
              nav.toDialog(
                AlertDialog(
                  title: const Text('Edit Images'),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      OnReactive(
                        () => _dt.rxImages.st.isEmpty
                            ? const SizedBox.shrink()
                            : Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  for (var path in _dt.rxImages.st.values)
                                    OnReactive(
                                      () => SizedBox(
                                        width: 65,
                                        height: 70,
                                        child: OnReactive(
                                          () => Card(
                                            child: Container(
                                              width: 60,
                                              height: 60,
                                              padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
                                              child: Image.file(
                                                File(path),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                      ),
                      OutlinedButton(
                        onPressed: () {
                          _ct.pickImages();
                        },
                        child: const Text('Add from Gallery'),
                      ),
                      OnReactive(
                        () => _dt.rxImages.st.isEmpty
                            ? const SizedBox.shrink()
                            : OutlinedButton(
                                onPressed: () async {
                                  _ct.updateProduct();
                                  final loading = false.inj();
                                  loading.setState((s) => true);
                                  if (loading.st == true) {
                                    Fun.showOverlayLoading();
                                  }
                                  await Future.delayed(500.milliseconds);
                                  loading.setState((s) => false);

                                  nav.back();
                                  nav.back();
                                },
                                child: const Text('Upload Image'),
                              ),
                      ),
                    ],
                  ),
                ),
              );
            },
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.add),
                Text('Add Image'),
              ],
            ),
          ),
          const SizedBoxH(10),
          CustomTile(
            title: 'Id',
            subtitle: '${womenShoes?.productId}',
            icon: Icons.key,
            isEdit: false,
          ),
          AdminWomenShoesListTileEdit(
            womenShoes: womenShoes,
            title: 'Name',
            subtitle: '${womenShoes?.name}',
            icon: Icons.shopping_bag,
            editField: OnFormBuilder(
              listenTo: _dt.rxForm,
              builder: () => TextField(
                controller: _dt.rxName.st.controller,
                focusNode: _dt.rxName.st.focusNode,
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.next,
                onEditingComplete: () => _dt.rxDescription.st.focusNode.requestFocus(),
                decoration: InputDecoration(
                  hintText: 'Name of product',
                  labelText: 'Product\'s Name',
                  errorText: _dt.rxName.st.error,
                ),
              ),
            ),
          ),
          AdminWomenShoesListTileEdit(
            womenShoes: womenShoes,
            title: 'Description',
            subtitle: '${womenShoes?.description}',
            icon: Icons.description,
            editField: OnFormBuilder(
              listenTo: _dt.rxForm,
              builder: () => TextField(
                controller: _dt.rxDescription.st.controller,
                focusNode: _dt.rxDescription.st.focusNode,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                onEditingComplete: () => _dt.rxMerk.st.focusNode.requestFocus(),
                decoration: InputDecoration(
                  hintText: 'Description of product',
                  labelText: 'Product\'s Description',
                  errorText: _dt.rxDescription.st.error,
                ),
              ),
            ),
          ),
          AdminWomenShoesListTileEdit(
            womenShoes: womenShoes,
            title: 'Merk',
            subtitle: '${womenShoes?.merk}',
            icon: Icons.label,
            editField: OnFormBuilder(
              listenTo: _dt.rxForm,
              builder: () => TextField(
                controller: _dt.rxMerk.st.controller,
                focusNode: _dt.rxMerk.st.focusNode,
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.next,
                onEditingComplete: () => _dt.rxPrice.st.focusNode.requestFocus(),
                decoration: InputDecoration(
                  hintText: 'Merk of product',
                  labelText: 'Product\'s Merk',
                  errorText: _dt.rxMerk.st.error,
                ),
              ),
            ),
          ),
          AdminWomenShoesListTileEdit(
            womenShoes: womenShoes,
            title: 'Price',
            subtitle: '${womenShoes?.price}',
            icon: Icons.price_change,
            editField: OnFormBuilder(
              listenTo: _dt.rxForm,
              builder: () => TextField(
                controller: _dt.rxPrice.st.controller,
                focusNode: _dt.rxPrice.st.focusNode,
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.next,
                onEditingComplete: () => _dt.rxQuantity.st.focusNode.requestFocus(),
                decoration: InputDecoration(
                  hintText: 'e.g. 100000',
                  labelText: 'Product\'s Price',
                  errorText: _dt.rxPrice.st.error,
                ),
              ),
            ),
          ),
          AdminWomenShoesListTileEdit(
            womenShoes: womenShoes,
            title: 'Quantity',
            subtitle: '${womenShoes?.quantity}',
            icon: Icons.production_quantity_limits,
            editField: OnFormBuilder(
              listenTo: _dt.rxForm,
              builder: () => TextField(
                controller: _dt.rxQuantity.st.controller,
                focusNode: _dt.rxQuantity.st.focusNode,
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.done,
                onEditingComplete: () => _dt.rxQuantity.st.focusNode.unfocus(),
                decoration: InputDecoration(
                  hintText: 'e.g. 100',
                  labelText: 'Product\'s Quantity',
                  errorText: _dt.rxQuantity.st.error,
                ),
              ),
            ),
          ),
          AdminWomenShoesListTileEdit(
            womenShoes: womenShoes,
            title: 'Category',
            subtitle: '${womenShoes?.category.name}',
            icon: Icons.category,
            isTextField: false,
            editField: OnFormFieldBuilder<String?>(
              listenTo: _dt.rxCategory.st,
              inputDecoration: InputDecoration(
                errorText: _dt.rxCategory.st.error,
                errorBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),
              ),
              builder: (value, onChanged) {
                return OnBuilder.data(
                  listenToMany: [_dt.rxCategoryList, _dt.rxCategoryLoader],
                  builder: (data) => DropdownButtonFormField<String>(
                    hint: const Text('Category'),
                    onChanged: (value) => _dt.rxCategory.st.value = value,
                    decoration: const InputDecoration(isDense: true),
                    value: value,
                    items: List.generate(
                      _dt.rxCategoryList.st.length,
                      (index) {
                        return DropdownMenuItem(
                          value: _dt.rxCategoryList.st[index].categoryId,
                          child: Text(_dt.rxCategoryList.st[index].name),
                        );
                      },
                    ),
                  ),
                );
              },
            ),
          ),
          ListTile(
            title: const Text('Sizes'),
            leading: const Icon(Icons.confirmation_number),
            subtitle: Wrap(
              children: [
                ...List.generate(
                  womenShoes!.sizes.length,
                  (index) => Chip(
                    label: Text('${womenShoes?.sizes[index]}'),
                  ),
                )
              ],
            ),
            trailing: IconButton(
              onPressed: () {
                nav.toDialog(
                  AlertDialog(
                    title: const Text('Edit Women\'s Shoes Sizes'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          nav.back();
                        },
                        child: const Text('Cancel'),
                      ),
                      OnFormBuilder(
                        listenTo: _dt.rxForm,
                        builder: () => OnFormSubmissionBuilder(
                          listenTo: _dt.rxForm,
                          onSubmitting: () => const CircularProgressIndicator(),
                          child: TextButton(
                            onPressed: () => _ct.submit(),
                            child: const Text('Submit'),
                          ),
                        ),
                      ),
                    ],
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        OnReactive(
                          () => MultiSelectChipField(
                            items: _dt.itemSizes,
                            initialValue: const [],
                            title: const Text("Size"),
                            headerColor: Colors.transparent,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.withOpacity(0.2), width: 1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            chipColor: Colors.transparent,
                            selectedChipColor: Theme.of(context).colorScheme.primary,
                            textStyle: const TextStyle(color: Colors.white),
                            selectedTextStyle: const TextStyle(color: Colors.white),
                            onTap: (values) {
                              // _ct.getSelectedSizes(values);
                              _ct.setSizesValues(values);
                              _ct.addToListSizes();

                              for (var i in values) {
                                logx.w(i.toString());
                              }
                              logx.e('----------');
                              for (var p in _dt.rxSelectedSizes.st) {
                                logx.wtf(p.toString());
                              }
                              logx.i(_dt.rxSelectedSizes.st.length.toString());
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              color: Theme.of(context).colorScheme.primary,
              icon: const Icon(Icons.edit),
            ),
          ),
          ListTile(
            title: const Text('Colors'),
            leading: const Icon(Icons.color_lens),
            subtitle: Wrap(
              children: [
                ...List.generate(
                  womenShoes!.colors.length,
                  (index) => Chip(
                    label: Text('${womenShoes?.colors[index]}'),
                  ),
                )
              ],
            ),
            trailing: IconButton(
              onPressed: () {
                nav.toDialog(
                  AlertDialog(
                    title: const Text('Edit Women\'s Shoes Sizes'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          nav.back();
                        },
                        child: const Text('Cancel'),
                      ),
                      OnFormBuilder(
                        listenTo: _dt.rxForm,
                        builder: () => OnFormSubmissionBuilder(
                          listenTo: _dt.rxForm,
                          onSubmitting: () => const CircularProgressIndicator(),
                          child: TextButton(
                            onPressed: () => _ct.submit(),
                            child: const Text('Submit'),
                          ),
                        ),
                      ),
                    ],
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        OnReactive(
                          () => MultiSelectChipField(
                            items: _dt.itemColors,
                            initialValue: const [],
                            title: const Text("Size"),
                            headerColor: Colors.transparent,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.withOpacity(0.2), width: 1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            chipColor: Colors.transparent,
                            selectedChipColor: Theme.of(context).colorScheme.primary,
                            textStyle: const TextStyle(color: Colors.white),
                            selectedTextStyle: const TextStyle(color: Colors.white),
                            onTap: (values) {
                              // _ct.getSelectedColors(values);
                              _ct.setColorsValues(values);
                              _ct.addToListColors();

                              for (var i in values) {
                                logx.w(i.toString());
                              }
                              logx.e('----------');
                              for (var p in _dt.rxSelectedColors.st) {
                                logx.wtf(p.toString());
                              }
                              logx.i(_dt.rxSelectedColors.st.length.toString());
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              color: Theme.of(context).colorScheme.primary,
              icon: const Icon(Icons.edit),
            ),
          ),
          CustomTile(
            title: 'Created At',
            subtitle: ('${womenShoes?.createdAt}'),
            icon: Icons.date_range,
            isEdit: false,
          ),
          womenShoes?.updatedAt == null
              ? const SizedBox.shrink()
              : CustomTile(
                  title: 'Updated At',
                  subtitle: ('${womenShoes?.updatedAt}'),
                  icon: Icons.date_range,
                  isEdit: false,
                ),
        ],
      ),
    );
  }
}

class AdminWomenShoesListTileEdit extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData? icon;
  final TextInputType? textInputType;
  final TextInputAction? textInputAction;
  final Widget editField;
  final bool isTextField;

  const AdminWomenShoesListTileEdit({
    super.key,
    required this.womenShoes,
    required this.title,
    required this.subtitle,
    required this.icon,
    this.textInputType = TextInputType.text,
    this.textInputAction = TextInputAction.next,
    this.isTextField = true,
    required this.editField,
  });

  final WomenShoes? womenShoes;

  @override
  Widget build(BuildContext context) {
    return CustomTile(
      title: title,
      subtitle: subtitle,
      icon: icon,
      onEditFunction: () {
        _ct.refreshTextField();
        nav.toDialog(
          AlertDialog(
            title: Text('Edit Women\'s Shoes $title'),
            actions: [
              TextButton(
                onPressed: () {
                  nav.back();
                },
                child: const Text('Cancel'),
              ),
              OnFormBuilder(
                listenTo: _dt.rxForm,
                builder: () => OnFormSubmissionBuilder(
                  listenTo: _dt.rxForm,
                  onSubmitting: () => const CircularProgressIndicator(),
                  child: TextButton(
                    onPressed: isTextField == true
                        ? _dt.rxForm.isDirty && _dt.rxForm.isValid
                            ? () => _ct.submit()
                            : null
                        : () => _ct.submit(),
                    child: const Text('Submit'),
                  ),
                ),
              ),
            ],
            content: editField,
          ),
        );
      },
    );
  }
}
