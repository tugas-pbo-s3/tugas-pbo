part of '_index.dart';

class ManDetailView extends StatelessWidget {
  const ManDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    final height = MediaQuery.of(context).size.height;

    List<Color?> colorsState = [
      Colors.white,
      Colors.black,
      Colors.grey.shade700,
    ];

    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: ManDetailAppbar(),
      ),
      // floatingActionButton: const ManDetailFab(),
      body: OnBuilder<MenShoes?>.all(
        onWaiting: () => const Center(child: CircularProgressIndicator()),
        onError: (error, refreshError) => Text(error),
        listenTo: _dt.rxProductFuture,
        onData: (data) {
          final sizes = _dt.rxProductFuture.st?.sizes ?? [];

          final colors = _dt.rxProductFuture.st?.colors ?? [];

          final totalPayment = _dt.rxAngka.st * _dt.rxProductFuture.st!.price;

          return width < 600
              ? const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MenDetailPhoto(),
                    SizedBoxH(10),
                    MenDetailDesc(),
                  ],
                )
              : SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.topCenter,
                        width: width / 3.0,
                        height: height / 1.6,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/pegaShoes500.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 25, right: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              data!.name,
                              style: const TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Rp ${Fun.formatRupiah.format(data.price)}',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w700,
                                color: Colors.red.withOpacity(0.7),
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              'merk: ${data.merk}',
                              style: const TextStyle(
                                color: Colors.black54,
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(height: 15),
                            SizedBox(
                              width: 500,
                              height: 80,
                              child: Text(
                                'merk: ${data.description}',
                                style: const TextStyle(
                                  fontSize: 15,
                                  color: Colors.black54,
                                ),
                              ),
                            ),
                            const SizedBox(height: 5),
                            Row(
                              children: [
                                const Text(
                                  'Size: ',
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(width: 30),
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
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                const Text(
                                  'Color:',
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(width: 30),
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
                            const SizedBox(height: 30),
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
                            const SizedBoxH(60),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                InkWell(
                                  onTap: () {
                                    _ct.addToCart();
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 18,
                                      horizontal: 70,
                                    ),
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFFD725A),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: Text(
                                      'Add to Cart',
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 1,
                                        color: Colors.white.withOpacity(0.8),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                );
        },
      ),
    );
  }
}
