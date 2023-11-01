part of '../_index.dart';

class LoginToRegister extends StatelessWidget {
  const LoginToRegister({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Don\'t have an account?'),
        TextButton(
          onPressed: () {
            nav.to(Routes.register);
          },
          child: const Text('Create'),
        ),
      ],
    );
  }
}
