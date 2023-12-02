part of '../_index.dart';

class AdminMenShoesInputQuantity extends StatelessWidget {
  const AdminMenShoesInputQuantity({super.key});

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
          hintText: 'Quantity of product e.g. 100',
          labelText: 'Quantity',
          errorText: _dt.rxQuantity.error,
        ),
      ),
    );
  }
}
