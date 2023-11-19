part of '../_index.dart';

class AdminKidsShoesListTileEditQuantity extends StatelessWidget {
  const AdminKidsShoesListTileEditQuantity({
    super.key,
    required this.kidsShoes,
  });

  final KidsShoes? kidsShoes;

  @override
  Widget build(BuildContext context) {
    return AdminKidsShoesListTileEdit(
      kidsShoes: kidsShoes,
      title: 'Quantity',
      subtitle: '${kidsShoes?.quantity}',
      icon: Icons.production_quantity_limits,
      editField: OnFormBuilder(
        listenTo: _dt.rxForm,
        builder: () => TextField(
          controller: _dt.rxQuantity.st.controller,
          focusNode: _dt.rxQuantity.st.focusNode,
          keyboardType: TextInputType.number,
          textInputAction: TextInputAction.done,
          onEditingComplete: () => _dt.rxQuantity.st.focusNode.unfocus(),
          decoration: InputDecoration(
            hintText: 'e.g. 100',
            labelText: 'Product\'s Quantity',
            errorText: _dt.rxQuantity.st.error,
          ),
        ),
      ),
    );
  }
}
