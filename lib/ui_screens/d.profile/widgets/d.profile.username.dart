part of '../_index.dart';

class ProfileUsername extends StatelessWidget {
  const ProfileUsername({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      title: Text('Username'),
      leading: Icon(Icons.person),
    );
  }
}
