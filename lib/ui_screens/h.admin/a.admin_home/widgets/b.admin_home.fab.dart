part of '../_index.dart';

class AdminHomeFab extends StatelessWidget {
  const AdminHomeFab({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.purple,
      onPressed: () => _ct.action(),
      child: const Icon(Icons.add),
    );
  }
}
