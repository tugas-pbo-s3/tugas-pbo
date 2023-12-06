part of '../_index.dart';

class AdminKelomDetailTileEditImages extends StatelessWidget {
  const AdminKelomDetailTileEditImages({
    super.key,
    required this.image,
  });

  final Map<String, String>? image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 100,
          child: image!.values.isEmpty
              ? Container(
                  height: 100,
                  width: 100,
                  color: Colors.grey.withOpacity(0.2),
                  child: const Icon(Icons.image_not_supported),
                )
              : SingleChildScrollView(
                  child: MediaQuery.of(context).size.width < 400
                      ? Center(
                          child: Container(
                            width: 100,
                            height: 100,
                            padding: const EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white,
                              ),
                            ),
                            child: Stack(
                              children: [
                                Shimmer.fromColors(
                                  baseColor: Colors.black12,
                                  highlightColor: Colors.black26,
                                  loop: 5,
                                  child: Container(
                                    height: 100,
                                    width: 100,
                                    // color: Get.theme.scaffoldBackgroundColor,
                                    color: Colors.grey,
                                  ),
                                ),
                                FadeIn(
                                  duration: const Duration(milliseconds: 500),
                                  child: SizedBox(
                                    width: 100,
                                    height: 100,
                                    child: FadeInImage.memoryNetwork(
                                      placeholder: kTransparentImage,
                                      image: '${image!.values.firstOrNull}',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            for (var i in image!.entries)
                              Container(
                                height: 100,
                                width: 100,
                                padding: const EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.white,
                                  ),
                                ),
                                child: Stack(
                                  children: [
                                    Shimmer.fromColors(
                                      baseColor: Colors.black12,
                                      highlightColor: Colors.black26,
                                      loop: 5,
                                      child: Container(
                                        height: 100,
                                        width: 100,
                                        // color: Get.theme.scaffoldBackgroundColor,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    FadeIn(
                                      duration: const Duration(milliseconds: 500),
                                      child: SizedBox(
                                        width: 100,
                                        height: 100,
                                        child: FadeInImage.memoryNetwork(
                                          placeholder: kTransparentImage,
                                          image: i.value,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                          ],
                        ),
                ),
        ),
        OutlinedButton(
          onPressed: () {
            _ct.refreshTextField();

            nav.toDialog(
              AlertDialog(
                title: const Text('Edit Foto'),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    OnReactive(
                      () => _dt.rxImages.st.isEmpty
                          ? const SizedBox.shrink()
                          : Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                for (var path in _dt.rxImages.st.entries)
                                  OnReactive(
                                    () => SizedBox(
                                      width: 65,
                                      height: 70,
                                      child: OnReactive(
                                        () => Card(
                                          child: Container(
                                            width: 60,
                                            height: 60,
                                            padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
                                            child: Stack(
                                              children: [
                                                Shimmer.fromColors(
                                                  baseColor: Colors.black12,
                                                  highlightColor: Colors.black26,
                                                  loop: 5,
                                                  child: Container(
                                                    height: 80,
                                                    width: 80,
                                                    // color: Get.theme.scaffoldBackgroundColor,
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                                path.value.contains('http')
                                                    ? FadeInImage.memoryNetwork(
                                                        placeholder: kTransparentImage,
                                                        image: path.value,
                                                      )
                                                    : Image.file(
                                                        File(path.value),
                                                        fit: BoxFit.cover,
                                                      ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                    ),
                    OutlinedButton(
                      onPressed: () {
                        _ct.pickImages();
                      },
                      child: const Text('Tambahkan dari galeri'),
                    ),
                    OnReactive(
                      () => _dt.rxImages.st.isEmpty
                          ? const SizedBox.shrink()
                          : OutlinedButton(
                              onPressed: () async {
                                _ct.updateProduct();
                                final loading = false.inj();
                                loading.setState((s) => true);
                                if (loading.st == true) {
                                  Fun.showOverlayLoading();
                                }
                                await Future.delayed(500.milliseconds);
                                loading.setState((s) => false);

                                nav.back();
                                nav.back();
                              },
                              child: const Text('Unggah Foto'),
                            ),
                    ),
                  ],
                ),
              ),
            );
          },
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.add),
              Text('Tambah Foto'),
            ],
          ),
        ),
      ],
    );
  }
}
