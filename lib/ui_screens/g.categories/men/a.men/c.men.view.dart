part of '_index.dart';

class ManView extends StatelessWidget {
  const ManView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    // final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: OnBuilder.all(
        listenToMany: [_dt.rxProductList, _dt.rxLoadMore],
        onWaiting: () => const Center(child: CircularProgressIndicator()),
        onError: (error, refreshError) => error,
        onData: (data) => _dt.rxProductList.st.isEmpty
            ? const Center(child: Text('Data is empty'))
            : Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Wrap(
                      spacing: width > 500 ? 15 : 0,
                      children: [
                        ...List.generate(
                          _dt.rxProductList.st.length,
                          (index) => Card(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () {
                                _ct.selectProduct(_dt.rxProductList.st[index].productId);
                              },
                              child: SizedBox(
                                height: width > 500 ? 300 : 200,
                                width: width > 500 ? 300 : 170,
                                child: Center(
                                  child: Column(
                                    children: [
                                      _dt.rxProductList.st[index].imageUrl!.isEmpty
                                          ? SizedBox(
                                              height: width > 500 ? 225 : 145,
                                              width: width > 500 ? 300 : 170,
                                              child: Image.network(
                                                'https://firebasestorage.googleapis.com/v0/b/tugas-pbo-fc0db.appspot.com/o/Image_not_available.png?alt=media&token=8e87ed45-9177-4945-845c-8cce5ad3d9df',
                                                fit: BoxFit.contain,
                                              ),
                                            )
                                          : SizedBox(
                                              height: width > 500 ? 225 : 145,
                                              width: width > 500 ? 300 : 195,
                                              child: Image.network(
                                                '${_dt.rxProductList.st[index].imageUrl?.values.first}',
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                      const SizedBoxH(10),
                                      Text(_dt.rxProductList.st[index].name),
                                      Text('Rp ${Fun.formatRupiah.format(_dt.rxProductList.st[index].price)}'),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    _dt.rxIsEnd.st == true
                        ? const Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Center(child: Text('end list of product')),
                          )
                        : TextButton.icon(
                            label: const Text('load  more'),
                            onPressed: () => _ct.readAllProducts(),
                            icon: const Icon(Icons.repeat),
                          ),
                  ],
                ),
              ),
      ),
    );
  }
}
