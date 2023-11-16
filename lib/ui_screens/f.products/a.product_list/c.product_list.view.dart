part of '_index.dart';

class ProductListView extends StatelessWidget {
  const ProductListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: width > 500 ? ProductListWeb(width: width) : const ProductListPhone(),
    );
  }
}
