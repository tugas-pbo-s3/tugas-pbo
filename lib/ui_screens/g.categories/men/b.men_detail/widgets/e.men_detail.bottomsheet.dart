part of '../_index.dart';

// ignore: must_be_immutable
class MenDetailBottomsheet extends StatelessWidget {
  MenDetailBottomsheet({super.key});

  List<Color?> colorsState = [
    Colors.white,
    Colors.black,
    Colors.grey.shade700,
  ];

  @override
  Widget build(BuildContext context) {
    return OnBuilder.all(
      listenTo: _dt.rxProductFuture,
      onWaiting: () => const CircularProgressIndicator(),
      onError: (error, refreshError) => error,
      onData: (data) {
        final sizes = _dt.rxProductFuture.st!.sizes;

        final colors = _dt.rxProductFuture.st!.colors;

        return Container(
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
              MenDetailSize(sizes: sizes),
              const SizedBoxH(10),
              MenDetailColor(colors: colors, colorsState: colorsState),
              const SizedBoxH(10),
              const MenDetailQty(),
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
              const SizedBox(height: 30),
              const MenDetailAddtoCart()
            ],
          ),
        );
      },
    );
  }
}
