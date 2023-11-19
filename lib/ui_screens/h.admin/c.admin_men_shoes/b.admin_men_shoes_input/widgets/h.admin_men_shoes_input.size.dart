part of '../_index.dart';

class AdminMenShoesInputSize extends ReactiveStatelessWidget {
  const AdminMenShoesInputSize({super.key});

  @override
  Widget build(BuildContext context) {
    return OnReactive(
      () => Container(
        margin: const EdgeInsets.only(top: 10.0),
        decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
        child: OnReactive(
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
                logx.w(i.size.toString());
              }
              logx.e('----------');
              for (var p in _dt.rxSelectedSizes.st) {
                logx.wtf(p.size.toString());
              }
              logx.i(_dt.rxSelectedSizes.st.length.toString());
            },
          ),
        ),
      ),
    );
  }
}