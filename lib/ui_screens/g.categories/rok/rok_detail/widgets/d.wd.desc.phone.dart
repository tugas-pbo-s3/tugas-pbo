part of '../_index.dart';

class RokDetailDescPhone extends StatelessWidget {
  const RokDetailDescPhone({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OnBuilder<Rok?>.all(
      listenTo: _dt.rxProductFuture,
      onWaiting: () => const Center(child: CircularProgressIndicator()),
      onError: (error, refreshError) => error,
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
                  Container(
                    constraints: const BoxConstraints(maxWidth: 200),
                    child: Text(
                      '${data?.name}',
                      textAlign: TextAlign.start,
                      style: TextStyle(color: Colors.grey.shade800, fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    'Rp ${Fun.formatRupiah.format(data?.price)}',
                    style: const TextStyle(color: Colors.purple, fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBoxH(8),
            Text(
              'Merk: ${data?.merk}',
              style: const TextStyle(color: Colors.grey, fontSize: 12, fontWeight: FontWeight.bold),
            ),
            const SizedBoxH(10),
            Text(
              'Category: ${data?.category.name}',
              style: const TextStyle(color: Colors.grey, fontSize: 12, fontWeight: FontWeight.bold),
            ),
            const SizedBoxH(10),
            Text(
              'Description: ${data?.description}',
              style: const TextStyle(color: Colors.grey, fontSize: 12, fontWeight: FontWeight.bold),
            ),
            const SizedBoxH(15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // _ct.selectOption();
                    _ct.setQty();
                    showModalBottomSheet(
                      backgroundColor: Colors.transparent,
                      context: context,
                      builder: (context) {
                        return RokDetailBottomSheet();
                      },
                    );
                  },
                  child: const Text(
                    "Show More",
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
