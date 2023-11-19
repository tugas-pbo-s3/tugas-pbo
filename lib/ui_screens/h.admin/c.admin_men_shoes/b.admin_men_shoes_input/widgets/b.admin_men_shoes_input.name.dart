part of '../_index.dart';

class AdminMenShoesInputName extends StatelessWidget {
  const AdminMenShoesInputName({super.key});

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
          hintText: 'Name of Product',
          labelText: 'Name',
          errorText: _dt.rxName.error,
        ),
      ),
    );
  }
}
