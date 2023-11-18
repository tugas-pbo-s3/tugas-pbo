part of '../_index.dart';

class KidsDetailAppbar extends StatelessWidget {
  const KidsDetailAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
    );
  }
}
