part of '../_index.dart';

class AdminWomenShoesListDetailTileEditImages extends StatelessWidget {
  const AdminWomenShoesListDetailTileEditImages({
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
                            child: Image.network(
                              '${image!.values.firstOrNull}',
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            for (var i in image!.values)
                              Container(
                                height: 100,
                                width: 100,
                                padding: const EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.white,
                                  ),
                                ),
                                child: Image.network(
                                  i,
                                  fit: BoxFit.cover,
                                ),
                              ),
                          ],
                        ),
                ),
        ),
        OutlinedButton(
          onPressed: () {
            nav.toDialog(
              AlertDialog(
                title: const Text('Edit Images'),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    OnReactive(
                      () => _dt.rxImages.st.isEmpty
                          ? const SizedBox.shrink()
                          : Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                for (var path in _dt.rxImages.st.values)
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
                                              child: Image.file(
                                                File(path),
                                                fit: BoxFit.cover,
                                              )),
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
                      child: const Text('Add from Gallery'),
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
                              child: const Text('Upload Image'),
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
              Text('Add Image'),
            ],
          ),
        ),
      ],
    );
  }
}
