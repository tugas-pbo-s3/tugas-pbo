part of '../_index.dart';

class AdminCategoryListAppbar extends StatelessWidget {
  const AdminCategoryListAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
    );
  }
}
