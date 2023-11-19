part of '../_index.dart';

class AdminMenShoesInputAppbar extends StatelessWidget {
  const AdminMenShoesInputAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
    );
  }
}
