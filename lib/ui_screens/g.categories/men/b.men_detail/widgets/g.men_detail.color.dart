part of '../_index.dart';

class MenDetailColor extends StatelessWidget {
  const MenDetailColor({
    super.key,
    required this.colors,
    required this.colorsState,
  });

  final List<String> colors;
  final List<Color?> colorsState;

  @override
  Widget build(BuildContext context) {
    return OnReactive(
      () => Row(
        children: [
          const Text(
            'Color:',
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBoxW(30),
          ...List.generate(
            colors.length,
            (index) => Container(
              margin: const EdgeInsets.all(2),
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: _dt.rxColor.st == colors[index] ? colorsState[index] : null,
                ),
                onPressed: () {
                  _ct.selectColor(colors[index]);
                },
                child: Text(colors[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
