part of '../_index.dart';

class AdminWomenShoesListFab extends StatelessWidget {
  const AdminWomenShoesListFab({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: false,
      backgroundColor: Colors.purple,
      onPressed: () => nav.to(Routes.adminWomenShoesInput),
      child: const Icon(Icons.add),
    );
  }
}
