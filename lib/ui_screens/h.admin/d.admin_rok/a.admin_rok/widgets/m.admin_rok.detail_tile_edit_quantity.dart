part of '../_index.dart';

class AdminRokDetailTileEditQuantity extends StatelessWidget {
  const AdminRokDetailTileEditQuantity({
    super.key,
    required this.kidsShoes,
  });

  final Rok? kidsShoes;

  @override
  Widget build(BuildContext context) {
    return AdminRokDetailTileEdit(
      kidsShoes: kidsShoes,
      title: 'Kuantitas',
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
            labelText: 'Kuantitas Produk',
            errorText: _dt.rxQuantity.st.error,
          ),
        ),
      ),
    );
  }
}
