part of '../_index.dart';

class AdminKebayaInputMerk extends StatelessWidget {
  const AdminKebayaInputMerk({super.key});

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: _dt.rxForm,
      builder: () => TextField(
        controller: _dt.rxMerk.controller,
        focusNode: _dt.rxMerk.focusNode,
        keyboardType: TextInputType.name,
        textInputAction: TextInputAction.next,
        onEditingComplete: () => _dt.rxMerk.focusNode.requestFocus(),
        decoration: InputDecoration(
          hintText: 'Masukkan Merek Produk',
          labelText: 'Merek Produk',
          errorText: _dt.rxMerk.error,
        ),
      ),
    );
  }
}
