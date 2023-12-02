part of '../_index.dart';

class AdminKidsShoesInputAppbar extends StatelessWidget {
  const AdminKidsShoesInputAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
    );
  }
}
