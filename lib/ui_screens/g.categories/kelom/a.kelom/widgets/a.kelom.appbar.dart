part of '../_index.dart';

class KelomAppbar extends StatelessWidget {
  const KelomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
    );
  }
}
