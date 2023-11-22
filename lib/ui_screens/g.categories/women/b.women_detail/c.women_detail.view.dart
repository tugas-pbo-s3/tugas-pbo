part of '_index.dart';

class WomenDetailView extends StatelessWidget {
  const WomenDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    // final height = MediaQuery.of(context).size.height;

    List<Color?> colorsState = [
      Colors.white,
      Colors.black,
      Colors.brown,
      Colors.grey.shade700,
      Colors.pink,
      Colors.purple,
    ];
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: WomenDetailAppbar(),
      ),
      // floatingActionButton: const ProductDetailFab(),
      body: OnBuilder.all(
        listenTo: _dt.rxProductFuture,
        onWaiting: () => const Center(child: CircularProgressIndicator()),
        onError: (error, refreshError) => const Text('error'),
        onData: (data) {
          _ct.setQty();
          final sizes = _dt.rxProductFuture.st?.sizes ?? [];

          final colors = _dt.rxProductFuture.st?.colors ?? [];

          return width <= 600
              ? const SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      WomenDetailPhoto(),
                      SizedBoxH(10),
                      WomenDetailDescPhone(),
                    ],
                  ),
                )
              : Center(
                  child: Container(
                    constraints: const BoxConstraints(maxWidth: 1500),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const WomenDetailPhoto(),
                          const SizedBoxW(30),
                          Padding(
                            padding: const EdgeInsets.only(top: 20, left: 25, right: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const WomenDetailDesWeb(),
                                const SizedBox(height: 5),
                                WomenDetailSize(sizes: sizes),
                                const SizedBox(height: 10),
                                WomenDetailColor(colors: colors, colorsState: colorsState),
                                const WomenDetailQty(),
                                const SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      'Total Payment:',
                                      style: TextStyle(
                                        color: Colors.purple,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    OnReactive(
                                      () => Text(
                                        'Rp ${Fun.formatRupiah.format(_dt.rxQty.st * _dt.rxProductFuture.st!.price)}',
                                        style: const TextStyle(
                                          color: Colors.purple,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBoxH(20),
                                const WomenDetailAddtoCart()
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
        },
      ),
    );
  }
}
