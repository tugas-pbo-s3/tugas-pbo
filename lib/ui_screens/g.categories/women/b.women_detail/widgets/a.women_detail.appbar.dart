part of '../_index.dart';

class WomenDetailAppbar extends StatelessWidget {
  const WomenDetailAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
    );
  }
}