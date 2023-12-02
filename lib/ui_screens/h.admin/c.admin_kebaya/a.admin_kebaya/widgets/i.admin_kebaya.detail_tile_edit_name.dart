part of '../_index.dart';

class AdminKebayaDetailTileEditName extends StatelessWidget {
  const AdminKebayaDetailTileEditName({
    super.key,
    required this.menShoes,
  });

  final Kebaya? menShoes;

  @override
  Widget build(BuildContext context) {
    return AdminKebayaDetailTileEdit(
      menShoes: menShoes,
      title: 'Nama',
      subtitle: '${menShoes?.name}',
      icon: Icons.shopping_bag,
      editField: OnFormBuilder(
        listenTo: _dt.rxForm,
        builder: () => TextField(
          controller: _dt.rxName.st.controller,
          focusNode: _dt.rxName.st.focusNode,
          keyboardType: TextInputType.name,
          textInputAction: TextInputAction.next,
          onEditingComplete: () => _dt.rxDescription.st.focusNode.requestFocus(),
          decoration: InputDecoration(
            hintText: 'Masukkan Nama Produk ',
            labelText: 'Nama Produk',
            errorText: _dt.rxName.st.error,
          ),
        ),
      ),
    );
  }
}
