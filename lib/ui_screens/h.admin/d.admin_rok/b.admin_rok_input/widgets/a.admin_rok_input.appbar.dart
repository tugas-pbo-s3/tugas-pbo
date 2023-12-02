part of '../_index.dart';

class AdminRokInputAppbar extends StatelessWidget {
  const AdminRokInputAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
    );
  }
}
