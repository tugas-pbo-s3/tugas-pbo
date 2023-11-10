part of '../_index.dart';

class AdminProductInputImages extends StatelessWidget {
  const AdminProductInputImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {
            _ct.pickImages();
            logx.wtf(_dt.rxImages.st.toString());
          },
          child: Container(
            // width: 60,
            constraints: const BoxConstraints(maxWidth: 125),
            height: 50,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.2),
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
            child: const Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.add),
                  Text('Add Images'),
                ],
              ),
            ),
          ),
        ),
        // if (_dt.rxImages.st.isNotEmpty)
        // for (var path in _dt.rxImages.st.keys)

        // : const SizedBox.shrink()
      ],
    );
  }
}

class AdminProductInputImagePreview extends StatelessWidget {
  const AdminProductInputImagePreview({super.key});

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
                            child: Image.network(
                              path,
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
