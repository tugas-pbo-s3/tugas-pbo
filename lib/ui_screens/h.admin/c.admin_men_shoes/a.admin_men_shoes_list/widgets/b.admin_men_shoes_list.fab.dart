part of '../_index.dart';

class AdminMenShoesListFab extends StatelessWidget {
  const AdminMenShoesListFab({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: false,
      child: const Icon(Icons.add),
      onPressed: () => nav.to(Routes.adminMenShoesInput),
    );
  }
}
