part of '../_index.dart';

class ProductEditCharlie extends StatelessWidget {
  const ProductEditCharlie({Key? key}) : super(key: key);

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
