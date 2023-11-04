part of '../_index.dart';

class AdminProductDetailAppbar extends StatelessWidget {
  const AdminProductDetailAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
    );
  }
}
