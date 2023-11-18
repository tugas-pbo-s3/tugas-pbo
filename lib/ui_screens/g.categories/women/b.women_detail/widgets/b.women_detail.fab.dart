part of '../_index.dart';

class WomenDetailFab extends StatelessWidget {
  const WomenDetailFab({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () => _ct.action(),
    );
  }
}
