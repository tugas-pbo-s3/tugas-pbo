part of '../_index.dart';

class KidsCharlie extends StatelessWidget {
  const KidsCharlie({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(Random().nextInt(100).toString()),
        OnReactive(() => Text('${_dt.rxInt.st}')),
      ],
    );
  }
}
