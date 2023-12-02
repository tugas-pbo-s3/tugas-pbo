part of '../_index.dart';

class AdminMenShoesInputPrice extends StatelessWidget {
  const AdminMenShoesInputPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: _dt.rxForm,
      builder: () => TextField(
        controller: _dt.rxPrice.controller,
        focusNode: _dt.rxPrice.focusNode,
        keyboardType: TextInputType.number,
        textInputAction: TextInputAction.next,
        onEditingComplete: () => _dt.rxDescription.focusNode.requestFocus(),
        decoration: InputDecoration(
          hintText: 'e.g. 10000',
          labelText: 'Price',
          errorText: _dt.rxPrice.error,
        ),
      ),
    );
  }
}
