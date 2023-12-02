part of '../_index.dart';

class AdminHomeInfoTotal extends StatelessWidget {
  const AdminHomeInfoTotal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OnReactive(
      () => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBoxH(20),
          const Text(
            'Total Produk',
            textScaleFactor: 2,
          ),
          OnBuilder.all(
            listenToMany: [
              _dt.rxWomenShoes,
              _dt.rxWomenShoesLoaderWithoutLimit,
              _dt.rxMenShoes,
              _dt.rxMenShoesLoaderWithoutLimit,
              _dt.rxKidsShoes,
              _dt.rxKidsShoesLoaderWithoutLimit
            ],
            onWaiting: () => const Text('Memuat ...'),
            onError: (error, refreshError) => Text('Error: $error'),
            onData: (data) => Text(
              '${_dt.rxWomenShoes.st.length + _dt.rxMenShoes.st.length + _dt.rxKidsShoes.st.length}',
              textScaleFactor: 3,
            ),
          ),
          // const Text(
          //   'Shoes',
          //   textScaleFactor: 1.5,
          // ),
        ],
      ),
    );
  }
}
