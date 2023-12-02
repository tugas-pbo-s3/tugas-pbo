part of '../_index.dart';

class AdminKebayaDetailTileEditMerk extends StatelessWidget {
  const AdminKebayaDetailTileEditMerk({
    super.key,
    required this.menShoes,
  });

  final Kebaya? menShoes;

  @override
  Widget build(BuildContext context) {
    return AdminKebayaDetailTileEdit(
      menShoes: menShoes,
      title: 'Merek',
      subtitle: '${menShoes?.merk}',
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
            hintText: 'Masukkan Merek Produk ',
            labelText: 'Merek Produk',
            errorText: _dt.rxMerk.st.error,
          ),
        ),
      ),
    );
  }
}
