part of '../_index.dart';

class AdminKebayaInputAppbar extends StatelessWidget {
  const AdminKebayaInputAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
    );
  }
}
