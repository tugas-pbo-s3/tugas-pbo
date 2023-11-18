part of '../_index.dart';

class KidsAppbar extends StatelessWidget {
  const KidsAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
    );
  }
}
