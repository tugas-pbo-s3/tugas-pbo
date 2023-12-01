part of '../_index.dart';

class ProductListTabBar extends StatelessWidget {
  const ProductListTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBar(
      splashBorderRadius: BorderRadius.circular(8),
      labelStyle: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
      labelColor: Colors.deepPurple.shade700,
      indicatorColor: Colors.deepPurple.shade700,
      indicatorPadding: const EdgeInsets.fromLTRB(2, 0, 2, 0),
      tabs: const <Widget>[
        Tab(text: 'Kelom'),
        Tab(text: 'Kebaya'),
        Tab(text: 'Rok'),
      ],
    );
  }
}
