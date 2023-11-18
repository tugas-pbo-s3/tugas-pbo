part of '../_index.dart';

class KidsFab extends StatelessWidget {
  const KidsFab({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () => _ct.action(),
    );
  }
}
