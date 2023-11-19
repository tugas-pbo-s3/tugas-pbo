part of '../_index.dart';

class AdminMenShoesListTileEditQuantity extends StatelessWidget {
  const AdminMenShoesListTileEditQuantity({
    super.key,
    required this.menShoes,
  });

  final MenShoes? menShoes;

  @override
  Widget build(BuildContext context) {
    return AdminMenShoesListTileEdit(
      menShoes: menShoes,
      title: 'Quantity',
      subtitle: '${menShoes?.quantity}',
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
