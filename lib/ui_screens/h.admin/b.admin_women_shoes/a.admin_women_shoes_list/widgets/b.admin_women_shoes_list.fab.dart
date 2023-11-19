part of '../_index.dart';

class AdminWomenShoesListFab extends StatelessWidget {
  const AdminWomenShoesListFab({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: false,
      child: const Icon(Icons.add),
      onPressed: () => nav.to(Routes.adminWomenShoesInput),
    );
  }
}
