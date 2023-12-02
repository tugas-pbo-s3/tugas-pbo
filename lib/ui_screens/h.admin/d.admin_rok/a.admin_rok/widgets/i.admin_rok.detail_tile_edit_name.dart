part of '../_index.dart';

class AdminRokDetailTileEditName extends StatelessWidget {
  const AdminRokDetailTileEditName({
    super.key,
    required this.kidsShoes,
  });

  final Rok? kidsShoes;

  @override
  Widget build(BuildContext context) {
    return AdminRokDetailTileEdit(
      kidsShoes: kidsShoes,
      title: 'Nama',
      subtitle: '${kidsShoes?.name}',
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
