part of '../_index.dart';

class ProductInputAppbar extends StatelessWidget {
  const ProductInputAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
    );
  }
}
