part of '../_index.dart';

class AdminKebayaTileEditPrice extends StatelessWidget {
  const AdminKebayaTileEditPrice({
    super.key,
    required this.menShoes,
  });

  final Kebaya? menShoes;

  @override
  Widget build(BuildContext context) {
    return AdminKebayaDetailTileEdit(
      menShoes: menShoes,
      title: 'Harga',
      subtitle: '${menShoes?.price}',
      icon: Icons.price_change,
      editField: OnFormBuilder(
        listenTo: _dt.rxForm,
        builder: () => TextField(
          controller: _dt.rxPrice.st.controller,
          focusNode: _dt.rxPrice.st.focusNode,
          keyboardType: TextInputType.number,
          textInputAction: TextInputAction.next,
          onEditingComplete: () => _dt.rxQuantity.st.focusNode.requestFocus(),
          decoration: InputDecoration(
            hintText: 'e.g. 100000',
            labelText: 'Harga Produk',
            errorText: _dt.rxPrice.st.error,
          ),
        ),
      ),
    );
  }
}
