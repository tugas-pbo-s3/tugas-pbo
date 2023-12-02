part of '../_index.dart';

class AdminKelomInputName extends StatelessWidget {
  const AdminKelomInputName({super.key});

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: _dt.rxForm,
      builder: () => TextField(
        controller: _dt.rxName.controller,
        focusNode: _dt.rxName.focusNode,
        keyboardType: TextInputType.name,
        textInputAction: TextInputAction.next,
        onEditingComplete: () => _dt.rxPrice.focusNode.requestFocus(),
        decoration: InputDecoration(
          hintText: 'Masukkan Nama Produk',
          labelText: 'Nama Produk',
          errorText: _dt.rxName.error,
        ),
      ),
    );
  }
}
