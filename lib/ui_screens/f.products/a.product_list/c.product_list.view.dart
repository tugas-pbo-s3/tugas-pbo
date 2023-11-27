part of '_index.dart';

class ProductListView extends StatelessWidget {
  const ProductListView({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      endDrawer: const Drawer(
        child: ProfileWeb(),
      ),
      body: width > 600 ? ProductListWeb(width: width) : const ProductListPhone(),
    );
  }
}
