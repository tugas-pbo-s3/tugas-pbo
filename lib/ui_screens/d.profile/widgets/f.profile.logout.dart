part of '../_index.dart';

class ProfileLogout extends StatelessWidget {
  const ProfileLogout({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: () {
        _ct.signOut();
      },
      icon: const Icon(Icons.logout),
      label: const Text('Keluar'),
    );
  }
}
