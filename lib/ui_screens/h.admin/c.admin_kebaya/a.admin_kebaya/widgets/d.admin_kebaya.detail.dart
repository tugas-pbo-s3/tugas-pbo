part of '../_index.dart';

class AdminKebayaDetail extends StatelessWidget {
  const AdminKebayaDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OnReactive(
      () => Align(
        alignment: Alignment.bottomCenter,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
            height: _dt.rxHeightContainer.st,
            width: double.infinity,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                // color: Color.fromARGB(255, 42, 42, 42),

                color: Colors.white),
            child: _dt.rxHeightContainer.st < 500 ? const SizedBox.shrink() : const AdminKebayaDetailContent(),
          ),
        ),
      ),
    );
  }
}
