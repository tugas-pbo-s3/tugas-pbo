part of '../_index.dart';

class KebayaAppbar extends StatelessWidget {
  const KebayaAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
    );
  }
}
