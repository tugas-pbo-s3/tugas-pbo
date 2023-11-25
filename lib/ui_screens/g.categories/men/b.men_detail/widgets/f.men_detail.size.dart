part of '../_index.dart';

class MenDetailSize extends StatelessWidget {
  const MenDetailSize({
    super.key,
    required this.sizes,
  });

  final List<int> sizes;

  @override
  Widget build(BuildContext context) {
    return OnReactive(
      () => SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        dragStartBehavior: DragStartBehavior.start,
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
                    backgroundColor: _dt.rxSize.st == sizes[index] ? Colors.purple.shade200 : null,
                  ),
                  onPressed: () {
                    _ct.selectSize(sizes[index]);
                  },
                  child: Text(
                    sizes[index].toString(),
                    style: TextStyle(
                      color: Colors.grey.shade800,
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
