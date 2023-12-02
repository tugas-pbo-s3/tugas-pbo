part of '../_index.dart';

class AdminMKebayaDetailTileEditCategory extends StatelessWidget {
  const AdminMKebayaDetailTileEditCategory({
    super.key,
    required this.menShoes,
  });

  final Kebaya? menShoes;

  @override
  Widget build(BuildContext context) {
    return AdminKebayaDetailTileEdit(
      menShoes: menShoes,
      title: 'Kategori',
      subtitle: '${menShoes?.category.name}',
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
              hint: const Text('Kategori'),
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
    );
  }
}
