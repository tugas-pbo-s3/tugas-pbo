part of '_index.dart';

class CartView extends StatelessWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: CartAppbar(),
      ),
      // floatingActionButton: const CartFab(),
      body: Center(
        child: ListView(
          children: [
            ...List.generate(
              5,
              (index) => Card(
                child: ListTile(
                  leading: Image.asset('assets/images/pegaShoes500.png'),
                  title: Text('Product $index'),
                  subtitle: const Text('RP 1000'),
                  trailing: SizedBox(
                    width: 214,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 150,
                          child: Row(
                            children: <Widget>[
                              IconButton(onPressed: () {}, icon: const Icon(Icons.remove)),
                              const SizedBox(width: 50, child: Center(child: Text('0'))),
                              IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
                            ],
                          ),
                        ),
                        const VerticalDivider(),
                        IconButton(onPressed: () {}, icon: const Icon(Icons.delete)),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
