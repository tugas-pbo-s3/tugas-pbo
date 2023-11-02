part of '../_index.dart';

class ProductEditFab extends StatelessWidget {
  const ProductEditFab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () => _ct.action(),
    );
  }
}
