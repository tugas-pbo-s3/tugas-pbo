part of '../_index.dart';

class AdminMenShoesListDetailTileEditColors extends StatelessWidget {
  final MenShoes? menShoes;

  const AdminMenShoesListDetailTileEditColors({super.key, required this.menShoes});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      visualDensity: VisualDensity.comfortable,
      style: ListTileStyle.drawer,
      title: const Text('Colors'),
      leading: const Icon(Icons.color_lens),
      subtitle: Wrap(
        children: [
          ...List.generate(
            menShoes!.colors.length,
            (index) => Chip(
              label: Text('${menShoes?.colors[index]}'),
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
                      textStyle: const TextStyle(color: Colors.black),
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
    );
  }
}
