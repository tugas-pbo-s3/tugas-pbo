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
      // floatingActionButton: const CartFab(),

      body: OnReactive(
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
                  // ElevatedButton(
                  //   onPressed: () {
                  //     nav.to(Routes.home);
                  //   },
                  //   child: const Text(
                  //     "Go to Shopping",
                  //   ),
                  // ),
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
                              // leading: _dt.rxCart.st.listCartedShoes[index].shoes.imageUrl!.isEmpty
                              //     ? SizedBox(
                              //         child: Image.network(
                              //           'https://firebasestorage.googleapis.com/v0/b/tugas-pbo-fc0db.appspot.com/o/Image_not_available.png?alt=media&token=8e87ed45-9177-4945-845c-8cce5ad3d9df',
                              //           fit: BoxFit.contain,
                              //         ),
                              //       )
                              //     : SizedBox(
                              //         child: Image.network(
                              //           '${_dt.rxProductList.st[index].imageUrl?.values.first}',
                              //           fit: BoxFit.contain,
                              //         ),
                              //       ),

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
                                    // crossAxisAlignment: CrossAxisAlignment.start,
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
                              // selected: _dt.rxSelectedId.st == _dt.rxProductList.st[index].id,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
      ),

      // * ---------------------------------------------
    );
  }
}
