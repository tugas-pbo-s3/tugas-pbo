part of '../_index.dart';

class AdminWomenShoesInputFab extends StatelessWidget {
  const AdminWomenShoesInputFab({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () => _ct.action(),
    );
  }
}
