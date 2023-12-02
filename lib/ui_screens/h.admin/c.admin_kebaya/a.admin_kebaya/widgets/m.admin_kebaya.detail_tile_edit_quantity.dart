part of '../_index.dart';

class AdminKebayaDetailTileEditQuantity extends StatelessWidget {
  const AdminKebayaDetailTileEditQuantity({
    super.key,
    required this.menShoes,
  });

  final Kebaya? menShoes;

  @override
  Widget build(BuildContext context) {
    return AdminKebayaDetailTileEdit(
      menShoes: menShoes,
      title: 'Kuantitas',
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
            labelText: 'Kuantitas Produk',
            errorText: _dt.rxQuantity.st.error,
          ),
        ),
      ),
    );
  }
}
