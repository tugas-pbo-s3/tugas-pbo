part of '../_index.dart';

class KebayaDetailAppbar extends StatelessWidget {
  const KebayaDetailAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
    );
  }
}
