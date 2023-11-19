part of '../_index.dart';

class AdminKidsShoesListTileEditName extends StatelessWidget {
  const AdminKidsShoesListTileEditName({
    super.key,
    required this.kidsShoes,
  });

  final KidsShoes? kidsShoes;

  @override
  Widget build(BuildContext context) {
    return AdminKidsShoesListTileEdit(
      kidsShoes: kidsShoes,
      title: 'Name',
      subtitle: '${kidsShoes?.name}',
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
