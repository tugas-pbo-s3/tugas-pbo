part of '../_index.dart';

class ProductEditAppbar extends StatelessWidget {
  const ProductEditAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
    );
  }
}
