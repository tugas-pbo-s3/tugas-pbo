part of '../_index.dart';

class AdminKelomInputAppbar extends StatelessWidget {
  const AdminKelomInputAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
    );
  }
}
