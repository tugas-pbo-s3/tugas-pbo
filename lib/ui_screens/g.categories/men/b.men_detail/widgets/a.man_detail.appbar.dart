part of '../_index.dart';

class ManDetailAppbar extends StatelessWidget {
  const ManDetailAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
    );
  }
}
