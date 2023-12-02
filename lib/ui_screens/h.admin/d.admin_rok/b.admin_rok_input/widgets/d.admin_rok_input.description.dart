part of '../_index.dart';

class AdminRokInputDescription extends StatelessWidget {
  const AdminRokInputDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: _dt.rxForm,
      builder: () => TextField(
        controller: _dt.rxDescription.controller,
        focusNode: _dt.rxDescription.focusNode,
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.next,
        onEditingComplete: () => _dt.rxQuantity.focusNode.requestFocus(),
        decoration: InputDecoration(
          hintText: 'Masukkan Deskripsi Produk',
          labelText: 'Deskripsi Produk',
          errorText: _dt.rxDescription.error,
        ),
      ),
    );
  }
}
