part of '../_index.dart';

class AdminRokDetailTileEditPrice extends StatelessWidget {
  const AdminRokDetailTileEditPrice({
    super.key,
    required this.kidsShoes,
  });

  final Rok? kidsShoes;

  @override
  Widget build(BuildContext context) {
    return AdminRokDetailTileEdit(
      kidsShoes: kidsShoes,
      title: 'Harga',
      subtitle: '${kidsShoes?.price}',
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
