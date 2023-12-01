part of '../_index.dart';

class AdminMenShoesListDetailTileEditSizes extends StatelessWidget {
  final Kebaya? menShoes;

  const AdminMenShoesListDetailTileEditSizes({super.key, required this.menShoes});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      visualDensity: VisualDensity.comfortable,
      style: ListTileStyle.drawer,
      title: const Text('Sizes'),
      leading: const Icon(Icons.confirmation_number),
      subtitle: Wrap(
        children: [
          ...List.generate(
            menShoes!.sizes.length,
            (index) => Chip(
              label: Text('${menShoes?.sizes[index]}'),
            ),
          )
        ],
      ),
      trailing: IconButton(
        onPressed: () {
          nav.toDialog(
            AlertDialog(
              title: const Text('Edit Men Shoes Sizes'),
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
                      textStyle: const TextStyle(color: Colors.black),
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
    );
  }
}
