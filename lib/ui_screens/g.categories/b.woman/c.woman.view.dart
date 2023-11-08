part of '_index.dart';

class WomanView extends StatelessWidget {
  const WomanView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnBuilder.all(
        listenToMany: [_dt.rxProductList, _dt.rxLoadMore],
        onWaiting: () => const Center(child: CircularProgressIndicator()),
        onError: (error, refreshError) => error,
        onData: (data) => Wrap(
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
                        Image.asset('assets/images/pegaShoes500.png', height: 150),
                        Text(_dt.rxProductList.st[index].name),
                        Text('Rp ${Fun.formatRupiah.format(_dt.rxProductList.st[index].price)}'),
                      ],
                    )),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
