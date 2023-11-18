part of '../_index.dart';

class AdminWomenShoesListDetailTilex extends ReactiveStatelessWidget {
  final WomenShoes? womenShoes;
  const AdminWomenShoesListDetailTilex({
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
          image!.values.isEmpty
              ? const SizedBox.shrink()
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 100,
                      constraints: const BoxConstraints(minWidth: 400),
                      child: Row(
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
                  ],
                ),
          ListTile(
            title: const Text('Name'),
            subtitle: Text('${womenShoes?.name}'),
            trailing: IconButton(
              onPressed: () {
                logx.e(_dt.rxName.st.value);
                logx.e(_dt.rxPrice.st.value);
                logx.e(_dt.rxProduct.st!.name);
                logx.e(_dt.rxProduct.st!.price.toString());
                _dt.rxName.refresh();

                nav.toDialog(
                  OnReactive(
                    () => AlertDialog(
                      title: Text(Random().nextInt(100).toString()),
                      content: OnFormBuilder(
                        listenTo: _dt.rxForm,
                        builder: () => OnReactive(
                          () => TextField(
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
                      actions: [
                        TextButton(
                          onPressed: () {
                            nav.back();
                          },
                          child: const Text(
                            "Cancel",
                          ),
                        ),
                        OnFormBuilder(
                          listenTo: _dt.rxForm,
                          builder: () => OnFormSubmissionBuilder(
                            listenTo: _dt.rxForm,
                            onSubmitting: () => const CircularProgressIndicator(),
                            child: TextButton(
                              onPressed: _dt.rxForm.isDirty && _dt.rxForm.isValid ? () => _ct.submit() : null,
                              child: const Text('Submit'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              // logx.e(_dt.rxName.st.te),
              icon: const Icon(Icons.edit),
            ),
          ),
          ListTile(
            title: const Text('Price'),
            subtitle: Text('${womenShoes?.price}'),
            trailing: IconButton(
              onPressed: () {
                _dt.rxPrice.refresh();

                nav.toDialog(
                  OnReactive(
                    () => AlertDialog(
                      title: Text(Random().nextInt(100).toString()),
                      content: OnFormBuilder(
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
                      actions: [
                        TextButton(
                          onPressed: () {
                            nav.back();
                          },
                          child: const Text(
                            "Cancel",
                          ),
                        ),
                        OnFormBuilder(
                          listenTo: _dt.rxForm,
                          builder: () => OnFormSubmissionBuilder(
                            listenTo: _dt.rxForm,
                            onSubmitting: () => const CircularProgressIndicator(),
                            child: TextButton(
                              onPressed: _dt.rxForm.isDirty && _dt.rxForm.isValid
                                  ? () {
                                      _ct.submit();
                                      // _dt.rxPrice.refresh();
                                      // _dt.rxName.rebuild;
                                      // _dt.rxPrice.rebuild;
                                    }
                                  : null,
                              child: const Text('Submit'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              // logx.e(_dt.rxName.st.te),
              icon: const Icon(Icons.edit),
            ),
          ),
        ],
      ),
    );
  }
}
