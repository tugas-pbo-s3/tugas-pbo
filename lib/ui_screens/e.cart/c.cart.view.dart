part of '_index.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: CartAppbar(),
      ),
      body: _dt.rxUser.st!.isAnonymous
          ? Padding(
              padding: const EdgeInsets.all(10),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'You logged in as anonymous. Please log in to view your cart',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBoxH(20),
                    OutlinedButton(
                      onPressed: () {
                        _ct.signOut();
                      },
                      child: const Text('Back to login page'),
                    )
                  ],
                ),
              ),
            )
          : OnReactive(
              () => _dt.rxCart.st.listCartedShoes.isEmpty
                  ? const Center(
                      child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Whoaa your cart is empty',
                          textScaleFactor: 1.8,
                        ),
                        SizedBoxH(5),
                        Text('''Let's style your feet by using cool shoes'''),
                        SizedBoxH(5),
                      ],
                    ))
                  : Column(
                      children: [
                        ...List.generate(
                          _dt.rxCart.st.listCartedShoes.length,
                          (index) => OnReactive(
                            () => Center(
                              child: Card(
                                child: SizedBox(
                                  width: 1000,
                                  child: ListTile(
                                    isThreeLine: true,
                                    title: Text(_dt.rxCart.st.listCartedShoes[index].shoes.name),
                                    subtitle: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Size: ${_dt.rxCart.st.listCartedShoes[index].size}'),
                                        const SizedBoxW(5),
                                        Text('Color: ${_dt.rxCart.st.listCartedShoes[index].color}'),
                                      ],
                                    ),
                                    trailing: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              ' ${_dt.rxCart.st.listCartedShoes[index].qty} x Rp ${Fun.formatRupiah.format(_dt.rxCart.st.listCartedShoes[index].shoes.price)}',
                                            ),
                                            const SizedBoxH(3),
                                            Text(
                                                'Total: Rp ${_dt.rxCart.st.listCartedShoes[index].shoes.price * _dt.rxCart.st.listCartedShoes[index].qty}'),
                                          ],
                                        ),
                                        const VerticalDivider(),
                                        IconButton(
                                            onPressed: () {
                                              nav.toCupertinoDialog(
                                                CupertinoAlertDialog(
                                                  title: const Text('Confirmation'),
                                                  content: const Text('Are u sure to delete this product?'),
                                                  actions: [
                                                    CupertinoDialogAction(
                                                      child: const Text('cancel'),
                                                      onPressed: () => nav.back(),
                                                    ),
                                                    CupertinoDialogAction(
                                                      onPressed: () {
                                                        _dt.rxCart.st = _dt.rxCart.st.copyWith(
                                                          listCartedShoes: [..._dt.rxCart.st.listCartedShoes]
                                                            ..removeAt(index),
                                                        );
                                                        nav.back();
                                                      },
                                                      isDefaultAction: true,
                                                      isDestructiveAction: true,
                                                      child: const Text('delete'),
                                                    ),
                                                  ],
                                                ),
                                              );
                                            },
                                            icon: const Icon(Icons.delete))
                                      ],
                                    ),
                                    onTap: () {},
                                  ),
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
