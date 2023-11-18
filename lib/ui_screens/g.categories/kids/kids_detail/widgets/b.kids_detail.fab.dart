part of '../_index.dart';

class KidsDetailFab extends StatelessWidget {
  const KidsDetailFab({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () => _ct.action(),
    );
  }
}
