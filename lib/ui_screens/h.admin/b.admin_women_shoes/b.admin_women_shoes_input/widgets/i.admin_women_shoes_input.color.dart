part of '../_index.dart';

class AdminWomenShoesInputColor extends StatelessWidget {
  const AdminWomenShoesInputColor({super.key});

  @override
  Widget build(BuildContext context) {
    return OnReactive(
      () => Container(
        margin: const EdgeInsets.only(top: 10.0),
        decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
        child: OnReactive(
          () => MultiSelectChipField<ShoesColors?>(
            scroll: true,
            items: _dt.itemColors,
            scrollBar: HorizontalScrollBar(),
            initialValue: const [],
            title: const Text("Colors"),
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
              _ct.setColorsValues(values);
              _ct.addToListColors();
            },
          ),
        ),
      ),
    );
  }
}
