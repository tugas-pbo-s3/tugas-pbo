part of '../_index.dart';

class ProfileDeleteAccount extends StatelessWidget {
  const ProfileDeleteAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        _ct.deleteAccount();
      },
      child: const Text('Delete Account'),
    );
  }
}
