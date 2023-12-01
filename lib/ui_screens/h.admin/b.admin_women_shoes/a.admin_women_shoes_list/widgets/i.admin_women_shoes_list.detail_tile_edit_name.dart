part of '../_index.dart';

class AdminWomenShoesListTileEditName extends StatelessWidget {
  const AdminWomenShoesListTileEditName({
    super.key,
    required this.womenShoes,
  });

  final Kelom? womenShoes;

  @override
  Widget build(BuildContext context) {
    return AdminWomenShoesListTileEdit(
      womenShoes: womenShoes,
      title: 'Name',
      subtitle: '${womenShoes?.name}',
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
