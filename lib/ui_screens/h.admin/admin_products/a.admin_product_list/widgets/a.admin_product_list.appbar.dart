part of '../_index.dart';

class AdminProductListAppbar extends StatelessWidget {
  const AdminProductListAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
    );
  }
}
