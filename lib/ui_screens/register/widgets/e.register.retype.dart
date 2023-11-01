part of '../_index.dart';

class RegisterRetype extends StatelessWidget {
  const RegisterRetype({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: _dt.rxForm,
      builder: () => TextField(
        controller: _dt.rxRetypePassword.st.controller,
        focusNode: _dt.rxRetypePassword.st.focusNode,
        decoration: InputDecoration(
          errorText: _dt.rxRetypePassword.st.error,
          labelText: 'Retype Password',
          hintText: 'Retype your password',
          prefixIcon: const Icon(Icons.lock),
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
