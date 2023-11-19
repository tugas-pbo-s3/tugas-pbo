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

      body: OnReactive(
        () => _dt.rxCart.st.listCartedShoes.isEmpty
            ? const Center(child: Text('cart  is empty'))
            : ListView(
                children: [
                  ...List.generate(
                    _dt.rxCart.st.listCartedShoes.length,
                    (index) => OnReactive(
                      () => Card(
                        child: ListTile(
                          leading: SizedBox(
                            height: 50,
                            width: 50,
                            // child: Image.network(_dt.rxCartList.st[index].imageUrl),
                            child: Center(child: Text(_dt.rxCart.st.listCartedShoes[index].qty.toString())),
                          ),
                          title: Text(_dt.rxCart.st.listCartedShoes[index].shoes.name),
                          subtitle: Row(
                            children: [
                              Text(_dt.rxCart.st.listCartedShoes[index].size.toString()),
                              Text(_dt.rxCart.st.listCartedShoes[index].color),
                            ],
                          ),
                          trailing: IconButton(
                            onPressed: () {
                              RM.navigate.toCupertinoDialog(
                                CupertinoAlertDialog(
                                  title: const Text('Confirmation'),
                                  content: const Text('Are you sure to delete these items?'),
                                  actions: [
                                    CupertinoDialogAction(
                                      child: const Text("Cancel"),
                                      onPressed: () => RM.navigate.back(),
                                    ),
                                    CupertinoDialogAction(
                                      isDestructiveAction: true,
                                      isDefaultAction: true,
                                      onPressed: () {
                                        nav.back();
                                        _ct.deleteCart();
                                      },
                                      child: const Text("DELETE"),
                                    ),
                                  ],
                                ),
                              );
                            },
                            icon: Opacity(
                              opacity: themeRM.isDarkTheme ? 1 : 0.8,
                              child: const Icon(Icons.delete),
                            ),
                            iconSize: 24,
                          ),
                          onTap: () {},
                          // selected: _dt.rxSelectedId.st == _dt.rxProductList.st[index].id,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
      ),

      // * ---------------------------------------------
      // body: OnBuilder.all(
      //   listenTo: _dt.rxCart,
      //   onWaiting: () => const Center(child: CircularProgressIndicator()),
      //   onError: (error, refreshError) => Text(error),
      //   onData: (data) {
      //     return data.listCartedShoes.isEmpty
      //         ? const Center(child: Text('cart  is empty'))
      //         : ListView(
      //             children: [
      //               ...List.generate(
      //                 _dt.rxCart.st.listCartedShoes.length,
      //                 (index) => OnReactive(
      //                   () => Card(
      //                     child: ListTile(
      //                       leading: SizedBox(
      //                         height: 50,
      //                         width: 50,
      //                         // child: Image.network(_dt.rxCartList.st[index].imageUrl),
      //                         child: Center(child: Text(_dt.rxCart.st.listCartedShoes[index].qty.toString())),
      //                       ),
      //                       title: Text(_dt.rxCart.st.listCartedShoes[index].shoes.name),
      //                       subtitle: Row(
      //                         children: [
      //                           Text(_dt.rxCart.st.listCartedShoes[index].size.toString()),
      //                           Text(_dt.rxCart.st.listCartedShoes[index].color),
      //                         ],
      //                       ),
      //                       trailing: Text(
      //                           'Rp ${Fun.formatRupiah.format(_dt.rxCart.st.listCartedShoes[index].shoes.price * _dt.rxCart.st.listCartedShoes[index].qty)}'),
      //                       onTap: () {},
      //                       // selected: _dt.rxSelectedId.st == _dt.rxProductList.st[index].id,
      //                     ),
      //                   ),
      //                 ),
      //               ),
      //             ],
      //           );
      //   },
      // ),

      // // * ---------------------------------------------
      // body: _dt.rxCart.st.listCartedShoes.isEmpty
      //     ? const Center(child: Text('cart is empty '))
      //     : OnBuilder.all(
      //         listenTo: _dt.rxCart,
      //         onWaiting: () => const Center(child: CircularProgressIndicator()),
      //         onError: (error, refreshError) => Text(error),
      //         onData: (data) => ListView(
      //           children: [
      //             ...List.generate(
      //               _dt.rxCart.st.listCartedShoes.length,
      //               (index) => OnReactive(
      //                 () => Card(
      //                   child: ListTile(
      //                     leading: SizedBox(
      //                       height: 50,
      //                       width: 50,
      //                       // child: Image.network(_dt.rxCartList.st[index].imageUrl),
      //                       child: Center(child: Text(_dt.rxCart.st.listCartedShoes[index].qty.toString())),
      //                     ),
      //                     title: Text(_dt.rxCart.st.listCartedShoes[index].shoes.name),
      //                     subtitle: Row(
      //                       children: [
      //                         Text(_dt.rxCart.st.listCartedShoes[index].size.toString()),
      //                         Text(_dt.rxCart.st.listCartedShoes[index].color),
      //                       ],
      //                     ),
      //                     trailing:
      //                         Text('Rp ${Fun.formatRupiah.format(_dt.rxCart.st.listCartedShoes[index].shoes.price)}'),
      //                     onTap: () {},
      //                     // selected: _dt.rxSelectedId.st == _dt.rxProductList.st[index].id,
      //                   ),
      //                 ),
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),

      // ***-----------------------------------------
      // body: Center(
      //   child: ListView(
      //     children: [
      //       Checkbox(
      //         activeColor: const Color(0xFFFD725A),
      //         value: true,
      //         onChanged: (value) {},
      //       ),
      //       ...List.generate(
      //         5,
      //         (index) => Card(
      //           child: ListTile(
      //             leading: SizedBox(
      //               width: 120,
      //               child: Row(
      //                 children: [
      //                   SizedBox(
      //                     child: Checkbox(
      //                       activeColor: const Color(0xFFFD725A),
      //                       value: true,
      //                       onChanged: (value) {},
      //                     ),
      //                   ),
      //                   Image.asset('assets/images/pegaShoes500.png'),
      //                 ],
      //               ),
      //             ),
      //             title: Text('Product $index'),
      //             subtitle: const Text('RP 1000'),
      //             trailing: SizedBox(
      //               width: 214,
      //               child: Row(
      //                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //                 children: [
      //                   SizedBox(
      //                     width: 150,
      //                     child: Row(
      //                       children: <Widget>[
      //                         IconButton(onPressed: () {}, icon: const Icon(Icons.remove)),
      //                         const SizedBox(width: 50, child: Center(child: Text('0'))),
      //                         IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
      //                       ],
      //                     ),
      //                   ),
      //                   const VerticalDivider(),
      //                   IconButton(onPressed: () {}, icon: const Icon(Icons.delete)),
      //                 ],
      //               ),
      //             ),
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
