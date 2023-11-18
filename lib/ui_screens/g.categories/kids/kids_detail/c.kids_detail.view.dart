part of '_index.dart';

class KidsDetailView extends StatelessWidget {
  const KidsDetailView({super.key});

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
        child: KidsDetailAppbar(),
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

          return width < 600
              ? SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      KidsDetailPhoto(),
                      const SizedBoxH(10),
                      const KidsDetailDescPhone(),
                    ],
                  ),
                )
              : Center(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        KidsDetailPhoto(),
                        const SizedBoxW(70),
                        Padding(
                          padding: const EdgeInsets.only(top: 20, left: 25, right: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const KidsDetailDesWeb(),
                              const SizedBox(height: 5),
                              KidsDetailSize(sizes: sizes),
                              const SizedBox(height: 10),
                              KidsDetailColor(colors: colors, colorsState: colorsState),
                              const KidsDetailQty(),
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
                                      'Rp ${Fun.formatRupiah.format(_dt.rxQty.st * _dt.rxProductFuture.st!.price)}',
                                      style: const TextStyle(
                                        color: Color(0xFFFD725A),
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBoxH(20),
                              const KidsDetailAddtoCart()
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
        },
      ),
    );
  }
}
