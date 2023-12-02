part of '../_index.dart';

class KebayaList extends StatelessWidget {
  const KebayaList({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    const imageBroken =
        'https://firebasestorage.googleapis.com/v0/b/tugas-pbo-fc0db.appspot.com/o/Image_not_available.png?alt=media&token=8e87ed45-9177-4945-845c-8cce5ad3d9df';

    return OnReactive(
      () => _dt.rxProductList.st.isEmpty
          ? const Center(child: Text('Tidak ada data produk'))
          : SingleChildScrollView(
              padding: const EdgeInsets.only(top: 3),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Wrap(
                      alignment: WrapAlignment.center,
                      runSpacing: width > 500 ? 15 : 0,
                      spacing: width > 500 ? 15 : 0,
                      children: [
                        ...List.generate(
                          _dt.rxProductList.st.length,
                          (index) => Card(
                            clipBehavior: Clip.antiAlias,
                            child: SizedBox(
                              width: width > 500 ? 300 : 170,
                              child: Stack(
                                children: [
                                  Center(
                                    child: Column(
                                      children: [
                                        AspectRatio(
                                          aspectRatio: 1 / 1,
                                          child: FadeInImage.memoryNetwork(
                                            fadeInDuration: const Duration(milliseconds: 500),
                                            placeholder: kTransparentImage,
                                            image: _dt.rxProductList.st[index].imageUrl!.isEmpty
                                                ? imageBroken
                                                : '${_dt.rxProductList.st[index].imageUrl?.values.first}',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Material(
                                    color: Colors.transparent,
                                    child: InkWell(
                                      onTap: () => _ct.selectProduct(_dt.rxProductList.st[index].productId),
                                      child: Center(
                                        child: Column(
                                          children: [
                                            const AspectRatio(aspectRatio: 1 / 1),
                                            const Divider(height: 1),
                                            SizedBox(
                                              width: double.infinity,
                                              height: width > 500 ? 60 : 45,
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  OnReactive(
                                                    () => Text(
                                                      _dt.rxProductList.st[index].name,
                                                      overflow: TextOverflow.ellipsis,
                                                      style: TextStyle(
                                                        color:
                                                            _dt.rxProductList.st[index].productId == _dt.rxSelectedId.st
                                                                ? Colors.purple
                                                                : Colors.grey.shade800,
                                                        fontSize: width > 500 ? 17 : 13,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                    ),
                                                  ),
                                                  OnReactive(
                                                    () => Text(
                                                      'Rp ${Fun.formatRupiah.format(_dt.rxProductList.st[index].price)}',
                                                      style: TextStyle(
                                                        color:
                                                            _dt.rxProductList.st[index].productId == _dt.rxSelectedId.st
                                                                ? Colors.purple
                                                                : Colors.grey.shade800,
                                                        fontSize: width > 500 ? 16 : 13,
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
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const KebayaLoad(),
                  ],
                ),
              ),
            ),
    );
  }
}
