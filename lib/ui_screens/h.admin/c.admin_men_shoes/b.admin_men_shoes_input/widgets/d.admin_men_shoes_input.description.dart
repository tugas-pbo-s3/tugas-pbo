part of '../_index.dart';

class AdminMenShoesInputDescription extends StatelessWidget {
  const AdminMenShoesInputDescription({super.key});

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
          hintText: 'Description of Product',
          labelText: 'Description',
          errorText: _dt.rxDescription.error,
        ),
      ),
    );
  }
}
