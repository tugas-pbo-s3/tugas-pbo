part of '../_index.dart';

class RegisterEmail extends StatelessWidget {
  const RegisterEmail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: _dt.rxForm,
      builder: () => TextField(
        controller: _dt.rxEmail.st.controller,
        focusNode: _dt.rxEmail.st.focusNode,
        decoration: InputDecoration(
          errorText: _dt.rxEmail.st.error,
          labelText: 'Email',
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
