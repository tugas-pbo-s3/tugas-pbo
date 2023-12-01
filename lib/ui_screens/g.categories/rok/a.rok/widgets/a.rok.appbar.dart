part of '../_index.dart';

class RokAppbar extends StatelessWidget {
  const RokAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
    );
  }
}
