// ignore_for_file: sort_child_properties_last

part of '../_index.dart';

class AdminKidsShoesListFab extends StatelessWidget {
  const AdminKidsShoesListFab({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: false,
      child: const Icon(Icons.add),
      backgroundColor: Colors.purple,
      onPressed: () => nav.to(Routes.adminKidsShoesInput),
    );
  }
}
