part of '../_index.dart';

class AdminProductInputMerk extends StatelessWidget {
  const AdminProductInputMerk({super.key});

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
          hintText: 'Merk of Product',
          labelText: 'Merk',
          errorText: _dt.rxMerk.error,
        ),
      ),
    );
  }
}
