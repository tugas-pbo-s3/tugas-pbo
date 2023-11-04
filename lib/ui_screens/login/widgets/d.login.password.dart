part of '../_index.dart';

class LoginPassword extends StatelessWidget {
  const LoginPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: _dt.rxForm,
      builder: () => TextField(
        controller: _dt.rxPassword.controller,
        focusNode: _dt.rxPassword.focusNode,
        keyboardType: TextInputType.visiblePassword,
        obscureText: _dt.rxIsObscurePassword.st,
        textInputAction: TextInputAction.done,
        onEditingComplete: () => _dt.focusScopeNode.unfocus(),
        decoration: InputDecoration(
          errorText: _dt.rxPassword.error,
          suffixIcon: OnReactive(
            () => IconButton(
              onPressed: () {
                _ct.obscurePassword();
              },
              icon:
                  _dt.rxIsObscurePassword.st == true ? const Icon(Icons.visibility) : const Icon(Icons.visibility_off),
            ),
          ),
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
