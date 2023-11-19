part of '../_index.dart';

class AdminMenShoesListTileEditMerk extends StatelessWidget {
  const AdminMenShoesListTileEditMerk({
    super.key,
    required this.menShoes,
  });

  final MenShoes? menShoes;

  @override
  Widget build(BuildContext context) {
    return AdminMenShoesListTileEdit(
      menShoes: menShoes,
      title: 'Merk',
      subtitle: '${menShoes?.merk}',
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
