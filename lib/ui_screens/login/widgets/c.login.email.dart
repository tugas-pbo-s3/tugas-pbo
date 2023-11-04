part of '../_index.dart';

class LoginEmail extends StatelessWidget {
  const LoginEmail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: _dt.rxForm,
      builder: () => TextField(
        controller: _dt.rxEmail.controller,
        focusNode: _dt.rxEmail.focusNode,
        keyboardType: TextInputType.emailAddress,
        textInputAction: TextInputAction.next,
        onEditingComplete: () => _dt.focusScopeNode.nextFocus(),
        decoration: InputDecoration(
          labelText: 'Email',
          errorText: _dt.rxEmail.error,
          hintText: 'email@example.com',
          prefixIcon: const Icon(Icons.email),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
        ),
      ),
    );
  }
}
