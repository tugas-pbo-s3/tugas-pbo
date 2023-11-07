part of '../_index.dart';

class AdminProductInputDescription extends StatelessWidget {
  const AdminProductInputDescription({Key? key}) : super(key: key);

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
