part of '../_index.dart';

class WomanAppbar extends StatelessWidget {
  const WomanAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
    );
  }
}
