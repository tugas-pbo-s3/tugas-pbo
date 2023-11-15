part of '../_index.dart';

class WomenDetailSize extends StatelessWidget {
  const WomenDetailSize({
    super.key,
    required this.sizes,
  });

  final List<int> sizes;

  @override
  Widget build(BuildContext context) {
    return OnReactive(
      () => Row(
        children: [
          const Text(
            'Size: ',
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBoxW(30),
          ...List.generate(
            sizes.length,
            (index) => Container(
              margin: const EdgeInsets.all(2),
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: _dt.rxSize.st == sizes[index] ? const Color(0xFFFD725A) : null,
                ),
                onPressed: () {
                  _ct.selectSize(sizes[index]);
                },
                child: Text(sizes[index].toString()),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
