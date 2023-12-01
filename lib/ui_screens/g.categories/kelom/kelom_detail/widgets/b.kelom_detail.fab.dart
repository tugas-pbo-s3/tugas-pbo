part of '../_index.dart';

class KelomDetailFab extends StatelessWidget {
  const KelomDetailFab({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () => _ct.action(),
    );
  }
}
