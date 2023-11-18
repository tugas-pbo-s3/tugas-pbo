part of '_index.dart';

class ProductInputView extends StatelessWidget {
  const ProductInputView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: ProductInputAppbar(),
      ),
      floatingActionButton: ProductInputFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ProductInputCharlie(),
            ProductInputDelta(),
            ProductInputEcho(),
          ],
        ),
      ),
    );
  }
}
