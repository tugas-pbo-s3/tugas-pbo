part of '../_index.dart';

class AdminHomeInfoTotalWomenShoes extends StatelessWidget {
  const AdminHomeInfoTotalWomenShoes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OnReactive(
      () => Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        borderOnForeground: false,
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                  child: Image.asset('assets/images/kelom.png'),
                ),
                const SizedBoxH(5),
                OnBuilder.all(
                  listenToMany: [_dt.rxWomenShoes, _dt.rxWomenShoesLoaderWithoutLimit],
                  onError: (e, s) => Text('Error: $e'),
                  onWaiting: () => const Text('loading ...'),
                  onData: (data) => Text('${_dt.rxWomenShoes.st.length}', textScaleFactor: 2.5),
                ),
                const SizedBoxH(5),
                const Text('Kelom'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
