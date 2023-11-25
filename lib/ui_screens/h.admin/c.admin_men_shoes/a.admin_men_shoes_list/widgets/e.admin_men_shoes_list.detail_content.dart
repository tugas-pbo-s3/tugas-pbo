part of '../_index.dart';

class AdminMenShoesListDetailContent extends StatelessWidget {
  const AdminMenShoesListDetailContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OnBuilder<MenShoes?>.all(
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
              AdminMenShoesListDetailTile(
                menShoes: data,
                image: image,
              ),
              Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  // color: Colors.grey.shade900,
                  color: Colors.purple.shade200,
                ),
                child: Row(
                  children: [
                    const SizedBoxW(20),
                    const Text(
                      'Men Shoes Detail',
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
