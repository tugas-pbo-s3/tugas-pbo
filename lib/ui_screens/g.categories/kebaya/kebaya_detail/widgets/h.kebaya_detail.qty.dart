part of '../_index.dart';

class KebayaDetailQty extends StatelessWidget {
  const KebayaDetailQty({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Quantity: ',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBoxW(30),
        OnReactive(
          () => OutlinedButton(
            style: OutlinedButton.styleFrom(
              shape: const CircleBorder(),
              fixedSize: const Size(20, 20),
            ),
            onPressed: _dt.rxQty.st <= 1
                ? null
                : () {
                    _dt.rxQty.st--;
                    logx.i('kurang');
                  },
            child: const Center(child: Icon(Icons.remove)),
          ),
        ),
        const SizedBoxH(5),
        OnReactive(
          () => Text(
            _dt.rxQty.st.toString(),
            textScaleFactor: 1.5,
          ),
        ),
        const SizedBoxH(5),
        OnReactive(
          () => OutlinedButton(
            style: OutlinedButton.styleFrom(
              shape: const CircleBorder(),
              fixedSize: const Size(20, 20),
            ),
            onPressed: _dt.rxQty.st >= 100
                ? null
                : () {
                    _dt.rxQty.st++;
                    logx.i('tambah');
                  },
            child: const Center(
              child: Icon(Icons.add),
            ),
          ),
        ),
      ],
    );
  }
}
