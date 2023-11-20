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
      () => SingleChildScrollView(
        child: Row(
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
                    // side: const BorderSide(color: Colors.grey),
                    backgroundColor: _dt.rxSize.st == sizes[index] ? Colors.purple : null,
                  ),
                  onPressed: () {
                    _ct.selectSize(sizes[index]);
                  },
                  child: Text(
                    sizes[index].toString(),
                    style: const TextStyle(
                      color: Colors.white,
                    ),
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
