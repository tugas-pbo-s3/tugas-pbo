part of '../_index.dart';

class KelomFab extends StatelessWidget {
  const KelomFab({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () => _ct.action(),
    );
  }
}
