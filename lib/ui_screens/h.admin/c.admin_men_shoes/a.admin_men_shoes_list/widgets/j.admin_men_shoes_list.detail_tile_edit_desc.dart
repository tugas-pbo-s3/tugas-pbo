part of '../_index.dart';

class AdminMenShoesListTileEditDesc extends StatelessWidget {
  const AdminMenShoesListTileEditDesc({
    super.key,
    required this.menShoes,
  });

  final Kebaya? menShoes;

  @override
  Widget build(BuildContext context) {
    return AdminMenShoesListTileEdit(
      menShoes: menShoes,
      title: 'Description',
      subtitle: '${menShoes?.description}',
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
