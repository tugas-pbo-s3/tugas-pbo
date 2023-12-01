part of '../_index.dart';

class AdminWomenShoesListTileEditDesc extends StatelessWidget {
  const AdminWomenShoesListTileEditDesc({
    super.key,
    required this.womenShoes,
  });

  final Kelom? womenShoes;

  @override
  Widget build(BuildContext context) {
    return AdminWomenShoesListTileEdit(
      womenShoes: womenShoes,
      title: 'Description',
      subtitle: '${womenShoes?.description}',
      icon: Icons.description,
      editField: OnFormBuilder(
        listenTo: _dt.rxForm,
        builder: () => TextField(
          controller: _dt.rxDescription.st.controller,
          focusNode: _dt.rxDescription.st.focusNode,
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.next,
          onEditingComplete: () => _dt.rxMerk.st.focusNode.requestFocus(),
          decoration: InputDecoration(
            hintText: 'Description of product',
            labelText: 'Product\'s Description',
            errorText: _dt.rxDescription.st.error,
          ),
        ),
      ),
    );
  }
}
