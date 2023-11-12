part of '../_index.dart';

// ignore: must_be_immutable
class WomenDetailBottomsheet extends StatelessWidget {
  WomenDetailBottomsheet({super.key});

  final sizes = _dt.rxProductFuture.st!.sizes;

  final colors = _dt.rxProductFuture.st!.colors;

  List<Color?> colorsState = [
    Colors.white,
    Colors.black,
    Colors.grey.shade700,
  ];

  final totalPayment = _dt.rxAngka.st * _dt.rxProductFuture.st!.price;

  @override
  Widget build(BuildContext context) {
    return OnBuilder.all(
      listenTo: _dt.rxProductFuture,
      onWaiting: () => const CircularProgressIndicator(),
      onError: (error, refreshError) => error,
      onData: (data) => Container(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 50),
        decoration: BoxDecoration(
          color: Colors.grey.shade400,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBoxH(10),
            Container(
              height: 4,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            const SizedBoxH(10),
            Row(
              children: [
                const Text(
                  'Size: ',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBoxW(30),
                ...List.generate(
                  sizes.length,
                  (index) => Container(
                    margin: const EdgeInsets.all(2),
                    child: TextButton(
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.pink),
                      ),
                      onPressed: () {},
                      child: Text(sizes[index].toString()),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBoxH(10),
            Row(
              children: [
                const Text(
                  'Color:',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBoxW(30),
                ...List.generate(
                  colors.length,
                  (index) => Container(
                      margin: const EdgeInsets.all(2),
                      child: TextButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(colorsState[index]),
                        ),
                        onPressed: () {},
                        child: Text(colors[index].toString()),
                      )),
                ),
              ],
            ),
            const SizedBoxH(10),
            Row(
              children: [
                const Text(
                  'Total: ',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBoxW(30),
                IconButton(
                  icon: const Icon(
                    Icons.remove,
                  ),
                  onPressed: () {
                    _dt.rxAngka.st--;
                    logx.i('kurang');
                  },
                  color: Colors.redAccent,
                ),
                const SizedBoxH(5),
                OnReactive(
                  () => Text(
                    _dt.rxAngka.st.toString(),
                    textScaleFactor: 1.5,
                  ),
                ),
                const SizedBoxH(5),
                IconButton(
                  icon: const Icon(
                    Icons.add,
                  ),
                  onPressed: () {
                    _dt.rxAngka.st++;
                    logx.i('tambah');
                  },
                  color: Colors.redAccent,
                ),
              ],
            ),
            const SizedBoxH(4),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Total Payment:',
                  style: TextStyle(
                    color: Color(0xFFFD725A),
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                OnReactive(
                  () => Text(
                    'Rp ${Fun.formatRupiah.format(totalPayment)}',
                    style: const TextStyle(
                      color: Color(0xFFFD725A),
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            InkWell(
              onTap: () {
                _ct.addToCart();
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => const CartScreen(),
                //     ));
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 100,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFFFD725A),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text(
                  'Checkout',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                    color: Colors.white.withOpacity(0.9),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
