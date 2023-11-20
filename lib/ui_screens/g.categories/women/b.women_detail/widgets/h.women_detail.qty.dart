part of '../_index.dart';

class WomenDetailQty extends StatelessWidget {
  const WomenDetailQty({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Total: ',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBoxW(30),
        IconButton(
          icon: const Icon(
            Icons.remove,
          ),
          onPressed: () {
            _dt.rxQty.st--;
            logx.i('kurang');
          },
          color: Colors.purple,
        ),
        const SizedBoxH(5),
        OnReactive(
          () => Text(
            _dt.rxQty.st.toString(),
            textScaleFactor: 1.5,
          ),
        ),
        const SizedBoxH(5),
        IconButton(
          icon: const Icon(
            Icons.add,
          ),
          onPressed: () {
            _dt.rxQty.st++;
            logx.i('tambah');
          },
          color: Colors.purple,
        ),
      ],
    );
  }
}
