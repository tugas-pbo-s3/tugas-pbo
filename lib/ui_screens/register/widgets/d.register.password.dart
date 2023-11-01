part of '../_index.dart';

class RegisterPassword extends StatelessWidget {
  const RegisterPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: _dt.rxForm,
      builder: () => TextField(
        controller: _dt.rxPassword.st.controller,
        focusNode: _dt.rxPassword.st.focusNode,
        decoration: InputDecoration(
          errorText: _dt.rxPassword.st.error,
          labelText: 'Password',
          hintText: 'Input your password email',
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
