part of '../_index.dart';

class ProfileLogout extends StatelessWidget {
  const ProfileLogout({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: TextButton.icon(
        onPressed: () {
          // nav.to(Routes.login);
          _ct.signOut();
        },
        icon: const Icon(Icons.logout),
        label: const Text('Logout'),
      ),
    );
  }
}
