part of '../_index.dart';

class WomanFab extends StatelessWidget {
  const WomanFab({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () => _ct.action(),
    );
  }
}
