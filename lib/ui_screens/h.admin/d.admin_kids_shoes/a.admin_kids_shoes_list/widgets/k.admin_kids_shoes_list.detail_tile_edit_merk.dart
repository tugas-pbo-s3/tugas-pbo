part of '../_index.dart';

class AdminKidsShoesListTileEditMerk extends StatelessWidget {
  const AdminKidsShoesListTileEditMerk({
    super.key,
    required this.kidsShoes,
  });

  final KidsShoes? kidsShoes;

  @override
  Widget build(BuildContext context) {
    return AdminKidsShoesListTileEdit(
      kidsShoes: kidsShoes,
      title: 'Merk',
      subtitle: '${kidsShoes?.merk}',
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
