part of '../_index.dart';

class KebayaFab extends StatelessWidget {
  const KebayaFab({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () => _ct.action(),
    );
  }
}
