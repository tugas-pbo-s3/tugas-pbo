part of '../_index.dart';

class AdminRokInputQuantity extends StatelessWidget {
  const AdminRokInputQuantity({super.key});

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: _dt.rxForm,
      builder: () => TextField(
        controller: _dt.rxQuantity.controller,
        focusNode: _dt.rxQuantity.focusNode,
        keyboardType: TextInputType.number,
        textInputAction: TextInputAction.done,
        onEditingComplete: () => _dt.rxMerk.focusNode.requestFocus(),
        decoration: InputDecoration(
          hintText: 'e.g. 100',
          labelText: 'Kuantitas produk',
          errorText: _dt.rxQuantity.error,
        ),
      ),
    );
  }
}
