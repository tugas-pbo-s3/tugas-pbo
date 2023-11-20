part of '_index.dart';

class KidsView extends StatelessWidget {
  const KidsView({super.key});

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
            : SingleChildScrollView(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Wrap(
                        spacing: width > 500 ? 15 : 0,
                        children: [
                          ...List.generate(
                            _dt.rxProductList.st.length,
                            (index) => Card(
                              color: Colors.white12,
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
                                                width: width > 500 ? 300 : 170,
                                                child: Image.network(
                                                  '${_dt.rxProductList.st[index].imageUrl?.values.first}',
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                        const SizedBoxH(10),
                                        Text(_dt.rxProductList.st[index].name,
                                            style: width < 500
                                                ? const TextStyle(
                                                    color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold)
                                                : const TextStyle(
                                                    color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold)),
                                        Text('Rp ${Fun.formatRupiah.format(_dt.rxProductList.st[index].price)}',
                                            style: width < 500
                                                ? const TextStyle(color: Colors.white70)
                                                : const TextStyle(color: Colors.white70, fontSize: 16)),
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
      ),
    );
  }
}
