part of '../_index.dart';

class ProductDetailAppbar extends StatelessWidget {
  const ProductDetailAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
    );
  }
}
