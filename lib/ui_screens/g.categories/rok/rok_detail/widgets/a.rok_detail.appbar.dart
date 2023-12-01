part of '../_index.dart';

class RokDetailAppbar extends StatelessWidget {
  const RokDetailAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
    );
  }
}
