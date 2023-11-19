part of '../_index.dart';

class AdminWomenShoesListTileEditCategory extends StatelessWidget {
  const AdminWomenShoesListTileEditCategory({
    super.key,
    required this.womenShoes,
  });

  final WomenShoes? womenShoes;

  @override
  Widget build(BuildContext context) {
    return AdminWomenShoesListTileEdit(
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
    );
  }
}
