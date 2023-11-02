part of '../_index.dart';

class RegisterToLogin extends StatelessWidget {
  const RegisterToLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Do you already have an account?'),
        TextButton(
          onPressed: () {
            nav.to(Routes.login);
          },
          child: const Text('Login'),
        ),
      ],
    );
  }
}
