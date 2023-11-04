part of '../_index.dart';

class AdminProductInputAppbar extends StatelessWidget {
  const AdminProductInputAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
    );
  }
}
