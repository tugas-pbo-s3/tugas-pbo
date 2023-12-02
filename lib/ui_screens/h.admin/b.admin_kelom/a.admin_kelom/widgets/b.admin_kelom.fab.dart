part of '../_index.dart';

class AdminKelomFab extends StatelessWidget {
  const AdminKelomFab({super.key});

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
