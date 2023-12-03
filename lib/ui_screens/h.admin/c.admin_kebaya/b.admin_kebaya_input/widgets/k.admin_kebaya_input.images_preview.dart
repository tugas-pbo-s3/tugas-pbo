part of '../_index.dart';

class AdminKebayaImagesPreview extends StatelessWidget {
  const AdminKebayaImagesPreview({super.key});

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
                            // child: !kIsWeb
                            //     ? Image.file(
                            //         File(path),
                            //         fit: BoxFit.cover,
                            //       )
                            //     : Image.network(path),
                            child: path.contains('http')
                                ? FadeInImage.memoryNetwork(
                                    placeholder: kTransparentImage,
                                    image: path,
                                  )
                                : Image.file(
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
