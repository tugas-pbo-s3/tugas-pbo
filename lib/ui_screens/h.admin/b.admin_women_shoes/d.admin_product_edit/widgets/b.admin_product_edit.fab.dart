part of '../_index.dart';

class AdminProductEditFab extends StatelessWidget {
  const AdminProductEditFab({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () => _ct.action(),
    );
  }
}
