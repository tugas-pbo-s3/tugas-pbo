part of '_index.dart';

class SizedBoxH extends StatelessWidget {
  final double height;
  const SizedBoxH(this.height, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}
