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
                      'Anda masuk sebagai anonymous. Silakan masuk dengan akun untuk melihat keranjang',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBoxH(20),
                    OutlinedButton(
                      onPressed: () {
                        _ct.signOut();
                      },
                      child: const Text('Kembali ke halaman Login'),
                    )
                  ],
                ),
              ),
            )
          : Padding(
              padding: const EdgeInsets.all(10),
              child: OnReactive(
                () => _dt.rxCart.st.listCartedShoes.isEmpty
                    ? const Center(
                        child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Yaah keranjang Anda masih belum terisi',
                            textAlign: TextAlign.center,
                            textScaleFactor: 1.8,
                          ),
                          SizedBoxH(5),
                          Text(
                            '''Ayo jadi mojang geulis dengan produk dari SiGeulis''',
                            textAlign: TextAlign.center,
                          ),
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
                                          Text('Ukuran: ${_dt.rxCart.st.listCartedShoes[index].size}'),
                                          const SizedBoxW(5),
                                          Text('Warna: ${_dt.rxCart.st.listCartedShoes[index].color}'),
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
                                                    title: const Text('Konfirmasi'),
                                                    content:
                                                        const Text('Apakah anda yakin untuk menghapus keranjang ini?'),
                                                    actions: [
                                                      CupertinoDialogAction(
                                                        child: const Text('batal'),
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
                                                        child: const Text('hapus'),
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
            ),
    );
  }
}
