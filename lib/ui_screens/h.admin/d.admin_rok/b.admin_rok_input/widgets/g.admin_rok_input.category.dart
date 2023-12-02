part of '../_index.dart';

class AdminRokInputCategory extends StatelessWidget {
  const AdminRokInputCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return OnFormFieldBuilder<String?>(
      listenTo: _dt.rxCategory,
      inputDecoration: InputDecoration(
        errorText: _dt.rxCategory.error,
        errorBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
        ),
      ),
      builder: (value, onChanged) {
        return OnBuilder.data(
          listenToMany: [_dt.rxCategoryList, _dt.rxCategoryLoader],
          builder: (data) => DropdownButtonFormField<String>(
            hint: const Text('Kategori'),
            onChanged: onChanged,
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
    );
  }
}
