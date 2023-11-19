part of '../_index.dart';

class CartAppbar extends StatelessWidget {
  const CartAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
      actions: [
        OnBuilder.data(
          listenTo: _dt.rxCart,
          builder: (data) => IconButton(
            onPressed: () => nav.toCupertinoDialog(
              CupertinoAlertDialog(
                title: const Text('Confirmation'),
                content: const Text('Are u sure to delete this product?'),
                actions: [
                  CupertinoDialogAction(
                    child: const Text('cancel'),
                    onPressed: () => nav.back(),
                  ),
                  CupertinoDialogAction(
                    onPressed: () => _ct.deleteAllCart(),
                    isDefaultAction: true,
                    isDestructiveAction: true,
                    child: const Text('delete'),
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
