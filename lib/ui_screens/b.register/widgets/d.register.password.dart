part of '../_index.dart';

class RegisterPassword extends StatelessWidget {
  const RegisterPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: _dt.rxForm,
      builder: () => InputTextField(
        textEditingController: _dt.rxPassword.controller,
        focusNode: _dt.rxPassword.focusNode,
        keyboardType: TextInputType.visiblePassword,
        isObscure: _dt.rxIsObscurePassword.st,
        textInputAction: TextInputAction.done,
        onEditingComplete: () => _dt.rxRetypePassword.focusNode.requestFocus(),
        errorText: _dt.rxPassword.error,
        suffixIcon: OnReactive(
          () => IconButton(
            onPressed: () {
              _ct.obscurePassword();
            },
            icon: _dt.rxIsObscurePassword.st == true ? const Icon(Icons.visibility) : const Icon(Icons.visibility_off),
          ),
        ),
        labelText: 'Password',
        hintText: 'Masukkan Password Anda',
        prefixIcon: const Icon(Icons.lock),
      ),
    );
  }
}
