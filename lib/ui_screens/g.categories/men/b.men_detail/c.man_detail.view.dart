part of '_index.dart';

class MenDetailView extends StatelessWidget {
  const MenDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    // final height = MediaQuery.of(context).size.height;

    // List<Color?> colorsState = [
    //   Colors.white,
    //   Colors.black,
    //   Colors.brown,
    //   Colors.grey.shade700,
    //   Colors.pink,
    //   Colors.purple,
    // ];
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: ManDetailAppbar(),
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
                      MenDetailPhoto(),
                      SizedBoxH(10),
                      MenDetailDescPhone(),
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
                          const MenDetailPhoto(),
                          const SizedBoxW(30),
                          Padding(
                            padding: const EdgeInsets.only(top: 20, left: 25, right: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const MenDetailDesWeb(),
                                const SizedBox(height: 5),
                                MenDetailSize(sizes: sizes),
                                const SizedBox(height: 5),
                                MenDetailColor(colors: colors, colorsState: Colors.purple.shade200),
                                const MenDetailQty(),
                                const SizedBox(height: 10),
                                OnReactive(
                                  () => Text(
                                    'Total Payment : Rp${Fun.formatRupiah.format(_dt.rxQty.st * _dt.rxProductFuture.st!.price)}',
                                    style: const TextStyle(
                                      color: Colors.purple,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                const SizedBoxH(20),
                                const MenDetailAddtoCart()
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
