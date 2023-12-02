part of '../_index.dart';

class AdminKebayaDetailTileEditDesc extends StatelessWidget {
  const AdminKebayaDetailTileEditDesc({
    super.key,
    required this.menShoes,
  });

  final Kebaya? menShoes;

  @override
  Widget build(BuildContext context) {
    return AdminKebayaDetailTileEdit(
      menShoes: menShoes,
      title: 'Deskripsi',
      subtitle: '${menShoes?.description}',
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
            hintText: 'Masukkan Deskripsi Produk ',
            labelText: 'Deskripsi Produk',
            errorText: _dt.rxDescription.st.error,
          ),
        ),
      ),
    );
  }
}
