part of '../_index.dart';

class AdminHomeFab extends StatelessWidget {
  const AdminHomeFab({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () => _ct.action(),
    );
  }
}
