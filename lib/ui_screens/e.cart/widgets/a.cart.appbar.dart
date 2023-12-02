part of '../_index.dart';

class CartAppbar extends StatelessWidget {
  const CartAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
      actions: [
        OnBuilder.data(
          listenTo: _dt.rxCart,
          builder: (data) => IconButton(
            onPressed: _dt.rxUser.st!.isAnonymous
                ? null
                : () => nav.toCupertinoDialog(
                      CupertinoAlertDialog(
                        title: const Text('Konfirmasi'),
                        content: const Text('Apakah anda yakin untuk menghapus seluruh keranjang?'),
                        actions: [
                          CupertinoDialogAction(
                            child: const Text('batal'),
                            onPressed: () => nav.back(),
                          ),
                          CupertinoDialogAction(
                            onPressed: () => _ct.deleteAllCart(),
                            isDefaultAction: true,
                            isDestructiveAction: true,
                            child: const Text('hapus'),
                          ),
                        ],
                      ),
                    ),
            icon: _dt.rxCart.st.listCartedShoes.isEmpty
                ? const Icon(
                    Icons.delete,
                    color: Colors.transparent,
                  )
                : const Icon(
                    Icons.delete,
                    color: Colors.red,
                  ),
          ),
        ),
      ],
    );
  }
}
