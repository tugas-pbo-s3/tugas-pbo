part of '_index.dart';

class KidsView extends StatelessWidget {
  const KidsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Container(
      //   color: Colors.amber,
      // ),
      body: OnBuilder.all(
        listenToMany: [_dt.rxProductList, _dt.rxLoadMore],
        onWaiting: () => const Center(child: CircularProgressIndicator()),
        onError: (error, refreshError) => error,
        onData: (data) => _dt.rxProductList.st.isEmpty
            ? const Center(child: Text('Data is empty'))
            : Wrap(
                children: [
                  ...List.generate(
                    _dt.rxProductList.st.length,
                    (index) => Card(
                      child: InkWell(
                        // onTap: () => nav.to(Routes.productDetail),
                        onTap: () {
                          _ct.selectProduct(_dt.rxProductList.st[index].productId);
                        },
                        child: SizedBox(
                          height: 200,
                          width: 200,
                          child: Center(
                            child: Column(
                              children: [
                                _dt.rxProductList.st[index].imageUrl!.isEmpty
                                    ? Container(
                                        color: Colors.black45,
                                        height: 145,
                                        width: 200,
                                        child: const Icon(Icons.broken_image_outlined, size: 40),
                                      )
                                    : SizedBox(
                                        height: 145,
                                        width: 200,
                                        child: Image.network(
                                          '${_dt.rxProductList.st[index].imageUrl?.values.first}',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                Text(_dt.rxProductList.st[index].name),
                                Text('Rp ${Fun.formatRupiah.format(_dt.rxProductList.st[index].price)}'),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
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
    );
  }
}
