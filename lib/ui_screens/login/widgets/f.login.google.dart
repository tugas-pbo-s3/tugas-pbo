part of '../_index.dart';

class LoginGoogle extends StatelessWidget {
  const LoginGoogle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        _ct.signInWithGoogle();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 20,
            width: 20,
            child: Image.asset('assets/images/g-logo.png'),
          ),
          const Text('Sign in with Google'),
        ],
      ),
    );
  }
}
