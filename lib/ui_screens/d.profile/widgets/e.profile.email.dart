part of '../_index.dart';

class ProfileEmail extends StatelessWidget {
  const ProfileEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      title: Text('Email'),
      leading: Icon(Icons.email),
    );
  }
}
