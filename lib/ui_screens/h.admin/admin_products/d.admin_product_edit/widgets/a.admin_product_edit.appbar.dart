part of '../_index.dart';

class AdminProductEditAppbar extends StatelessWidget {
  const AdminProductEditAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
    );
  }
}
