part of '../_index.dart';

class AdminHomeInfoTotalMenShoes extends StatelessWidget {
  const AdminHomeInfoTotalMenShoes({
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
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 80,
                  child: Image.asset('assets/images/men.png'),
                ),
                OnBuilder.all(
                  listenToMany: [_dt.rxMenShoes, _dt.rxMenShoesLoaderWithoutLimit],
                  onError: (e, s) => Text('Error: $e'),
                  onWaiting: () => const Text('loading ...'),
                  onData: (data) => Text('${_dt.rxMenShoes.st.length}', textScaleFactor: 2.5),
                ),
                const SizedBoxH(5),
                const Text('Men\'s Shoes'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
