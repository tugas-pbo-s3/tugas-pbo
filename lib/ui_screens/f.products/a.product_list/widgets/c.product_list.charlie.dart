part of '../_index.dart';

class ProductListCharlie extends StatelessWidget {
  const ProductListCharlie({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBar(
      splashBorderRadius: BorderRadius.circular(8),
      labelStyle: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
      labelColor: Colors.deepPurple.shade700,
      indicatorColor: Colors.deepPurple.shade700,
      tabs: const <Widget>[
        Tab(text: 'Women'),
        Tab(text: 'Men'),
        Tab(text: 'Kids'),
      ],
    );
  }
}
