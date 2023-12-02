part of '../_index.dart';

class AdminKelomDetailContent extends StatelessWidget {
  const AdminKelomDetailContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OnBuilder<Kelom?>.all(
      listenTo: _dt.rxProduct,
      onWaiting: () => _dt.rxHeightContainer.st < 500
          ? const SizedBox.shrink()
          : const Center(
              child: CircularProgressIndicator(),
            ),
      onError: (e, s) => Text('Error: $e'),
      onData: (data) {
        final image = data?.imageUrl!;
        return OnReactive(
          () => Stack(
            children: [
              AdminKelomDetailTile(
                womenShoes: data,
                image: image,
              ),
              Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  color: Colors.purple.shade200,
                  // color: Colors.grey.shade900,
                ),
                child: Row(
                  children: [
                    const SizedBoxW(20),
                    const Text(
                      'Detail Kelom',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                        _dt.rxHeightContainer.st = 0;
                      },
                      icon: const Icon(Icons.close),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
