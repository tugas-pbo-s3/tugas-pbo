part of '../_index.dart';

class AdminKidsShoesListDetailTileEditColors extends StatelessWidget {
  final KidsShoes? kidsShoes;

  const AdminKidsShoesListDetailTileEditColors({super.key, required this.kidsShoes});

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
            kidsShoes!.colors.length,
            (index) => Chip(
              label: Text('${kidsShoes?.colors[index]}'),
            ),
          )
        ],
      ),
      trailing: IconButton(
        onPressed: () {
          nav.toDialog(
            AlertDialog(
              title: const Text('Edit Kids Shoes Sizes'),
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
                        _ct.setColorsValues(values);
                        _ct.addToListColors();
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
