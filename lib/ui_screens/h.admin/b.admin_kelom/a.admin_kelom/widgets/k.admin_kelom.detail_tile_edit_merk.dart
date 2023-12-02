part of '../_index.dart';

class AdminKelomDetailTileEditMerk extends StatelessWidget {
  const AdminKelomDetailTileEditMerk({
    super.key,
    required this.womenShoes,
  });

  final Kelom? womenShoes;

  @override
  Widget build(BuildContext context) {
    return AdminKelomDetailTileEdit(
      womenShoes: womenShoes,
      title: 'Merek',
      subtitle: '${womenShoes?.merk}',
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
