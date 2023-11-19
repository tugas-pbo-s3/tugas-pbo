part of '../_index.dart';

class AdminWomenShoesListTileEditQuantity extends StatelessWidget {
  const AdminWomenShoesListTileEditQuantity({
    super.key,
    required this.womenShoes,
  });

  final WomenShoes? womenShoes;

  @override
  Widget build(BuildContext context) {
    return AdminWomenShoesListTileEdit(
      womenShoes: womenShoes,
      title: 'Quantity',
      subtitle: '${womenShoes?.quantity}',
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
