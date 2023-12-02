part of '../_index.dart';

class AdminKelomDetailTileEditDesc extends StatelessWidget {
  const AdminKelomDetailTileEditDesc({
    super.key,
    required this.womenShoes,
  });

  final Kelom? womenShoes;

  @override
  Widget build(BuildContext context) {
    return AdminKelomDetailTileEdit(
      womenShoes: womenShoes,
      title: 'Deskripsi',
      subtitle: '${womenShoes?.description}',
      icon: Icons.description,
      editField: OnFormBuilder(
        listenTo: _dt.rxForm,
        builder: () => TextField(
          controller: _dt.rxDescription.st.controller,
          focusNode: _dt.rxDescription.st.focusNode,
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.next,
          onEditingComplete: () => _dt.rxMerk.st.focusNode.requestFocus(),
          decoration: InputDecoration(
            hintText: 'Masukkan Deskripsi Produk',
            labelText: 'Deskripsi Produk',
            errorText: _dt.rxDescription.st.error,
          ),
        ),
      ),
    );
  }
}
