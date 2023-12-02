part of '../_index.dart';

class AdminKelomDetailTileEditName extends StatelessWidget {
  const AdminKelomDetailTileEditName({
    super.key,
    required this.womenShoes,
  });

  final Kelom? womenShoes;

  @override
  Widget build(BuildContext context) {
    return AdminKelomDetailTileEdit(
      womenShoes: womenShoes,
      title: 'Nama',
      subtitle: '${womenShoes?.name}',
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
            hintText: 'Masukkan Nama Produk',
            labelText: 'Nama Produk',
            errorText: _dt.rxName.st.error,
          ),
        ),
      ),
    );
  }
}
