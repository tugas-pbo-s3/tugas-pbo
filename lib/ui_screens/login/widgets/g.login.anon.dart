part of '../_index.dart';

class LoginAnon extends StatelessWidget {
  const LoginAnon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        _ct.signInAnonymously();
      },
      child: const Text('Sign in Anonymously'),
    );
  }
}
