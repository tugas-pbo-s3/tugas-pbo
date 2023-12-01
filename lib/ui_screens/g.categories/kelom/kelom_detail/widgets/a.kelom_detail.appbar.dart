part of '../_index.dart';

class KelomDetailAppbar extends StatelessWidget {
  const KelomDetailAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
    );
  }
}
