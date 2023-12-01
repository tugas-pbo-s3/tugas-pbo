part of '../_index.dart';

class KebayaDetailFab extends StatelessWidget {
  const KebayaDetailFab({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () => _ct.action(),
    );
  }
}
