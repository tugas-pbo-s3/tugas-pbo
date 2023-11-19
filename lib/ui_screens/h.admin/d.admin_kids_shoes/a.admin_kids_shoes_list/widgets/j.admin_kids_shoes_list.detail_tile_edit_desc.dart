part of '../_index.dart';

class AdminKidsShoesListTileEditDesc extends StatelessWidget {
  const AdminKidsShoesListTileEditDesc({
    super.key,
    required this.kidsShoes,
  });

  final KidsShoes? kidsShoes;

  @override
  Widget build(BuildContext context) {
    return AdminKidsShoesListTileEdit(
      kidsShoes: kidsShoes,
      title: 'Description',
      subtitle: '${kidsShoes?.description}',
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
