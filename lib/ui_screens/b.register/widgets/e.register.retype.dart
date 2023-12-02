part of '../_index.dart';

class RegisterRetype extends StatelessWidget {
  const RegisterRetype({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: _dt.rxForm,
      builder: () => InputTextField(
        textEditingController: _dt.rxRetypePassword.controller,
        focusNode: _dt.rxRetypePassword.focusNode,
        keyboardType: TextInputType.visiblePassword,
        isObscure: _dt.rxIsObscureRetypePassword.st,
        textInputAction: TextInputAction.done,
        onEditingComplete: () => _dt.rxRetypePassword.focusNode.unfocus(),
        errorText: _dt.rxRetypePassword.error,
        suffixIcon: OnReactive(
          () => IconButton(
            onPressed: () {
              _ct.obscureRetypePassword();
            },
            icon: _dt.rxIsObscureRetypePassword.st == true
                ? const Icon(Icons.visibility)
                : const Icon(Icons.visibility_off),
          ),
        ),
        labelText: 'Ketik Ulang Password',
        hintText: 'Ketik Ulang Password Anda',
        prefixIcon: const Icon(Icons.lock),
      ),
    );
  }
}
