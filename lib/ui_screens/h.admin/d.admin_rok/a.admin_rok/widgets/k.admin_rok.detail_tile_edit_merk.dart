part of '../_index.dart';

class AdminRokDetailTileEditMerk extends StatelessWidget {
  const AdminRokDetailTileEditMerk({
    super.key,
    required this.kidsShoes,
  });

  final Rok? kidsShoes;

  @override
  Widget build(BuildContext context) {
    return AdminRokDetailTileEdit(
      kidsShoes: kidsShoes,
      title: 'Merek',
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
            hintText: 'Masukkan Merek Produk',
            labelText: 'Merek Produk',
            errorText: _dt.rxMerk.st.error,
          ),
        ),
      ),
    );
  }
}
