part of '../_index.dart';

class WomenDetailDesc extends StatelessWidget {
  const WomenDetailDesc({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OnBuilder<WomenShoes?>.all(
      listenTo: _dt.rxProductFuture,
      onWaiting: () => const CircularProgressIndicator(),
      onError: (error, refreshError) => error,
      // onData: (data) => Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     Text('${data?.productId}'),
      //     Text('${data?.name}'),
      //     Text('${data?.price}'),
      //     Text('${data?.quantity}'),
      //     Text('${data?.createdAt}'),
      //     Text('${data?.updatedAt}'),
      //   ],
      // ),
      onData: (data) => Padding(
        padding: const EdgeInsets.only(top: 8, left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${data?.name}',
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Rp ${Fun.formatRupiah.format(data?.price)}',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: Colors.red.withOpacity(0.7),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBoxH(8),
            Text(
              'merk: ${data?.merk}',
              style: const TextStyle(
                color: Colors.black54,
                fontSize: 16,
              ),
            ),
            const SizedBoxH(20),
            Text(
              'Deskripsi: ${data?.description}',
              style: const TextStyle(
                fontSize: 15,
                color: Colors.black54,
              ),
            ),
            const SizedBoxH(15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    onPressed: () {
                      nav.to(Routes.cart);
                    },
                    icon: const Icon(Icons.shopping_cart)),
                ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet(
                      backgroundColor: Colors.transparent,
                      context: context,
                      builder: (context) {
                        return WomenDetailBottomsheet();
                      },
                    );
                  },
                  child: const Text(
                    "Buy Now",
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
