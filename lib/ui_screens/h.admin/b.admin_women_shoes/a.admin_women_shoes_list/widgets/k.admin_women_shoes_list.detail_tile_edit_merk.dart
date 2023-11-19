part of '../_index.dart';

class AdminWomenShoesListTileEditMerk extends StatelessWidget {
  const AdminWomenShoesListTileEditMerk({
    super.key,
    required this.womenShoes,
  });

  final WomenShoes? womenShoes;

  @override
  Widget build(BuildContext context) {
    return AdminWomenShoesListTileEdit(
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
    );
  }
}
