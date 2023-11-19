part of '../_index.dart';

class AdminMenShoesImagesPreview extends StatelessWidget {
  const AdminMenShoesImagesPreview({super.key});

  @override
  Widget build(BuildContext context) {
    return OnReactive(
      () => _dt.rxImages.st.isEmpty
          ? const SizedBox.shrink()
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                for (var path in _dt.rxImages.st.values)
                  OnReactive(
                    () => SizedBox(
                      width: 65,
                      height: 70,
                      child: OnReactive(
                        () => Card(
                          child: Container(
                            width: 60,
                            height: 60,
                            padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
                            child: Image.file(
                              File(path),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
    );
  }
}