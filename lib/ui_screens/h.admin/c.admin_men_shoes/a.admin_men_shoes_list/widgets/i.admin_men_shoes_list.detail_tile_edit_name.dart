part of '../_index.dart';

class AdminMenShoesListTileEditName extends StatelessWidget {
  const AdminMenShoesListTileEditName({
    super.key,
    required this.menShoes,
  });

  final Kebaya? menShoes;

  @override
  Widget build(BuildContext context) {
    return AdminMenShoesListTileEdit(
      menShoes: menShoes,
      title: 'Name',
      subtitle: '${menShoes?.name}',
      icon: Icons.shopping_bag,
      editField: OnFormBuilder(
        listenTo: _dt.rxForm,
        builder: () => TextField(
          controller: _dt.rxName.st.controller,
          focusNode: _dt.rxName.st.focusNode,
          keyboardType: TextInputType.name,
          textInputAction: TextInputAction.next,
          onEditingComplete: () => _dt.rxDescription.st.focusNode.requestFocus(),
          decoration: InputDecoration(
            hintText: 'Name of product',
            labelText: 'Product\'s Name',
            errorText: _dt.rxName.st.error,
          ),
        ),
      ),
    );
  }
}
