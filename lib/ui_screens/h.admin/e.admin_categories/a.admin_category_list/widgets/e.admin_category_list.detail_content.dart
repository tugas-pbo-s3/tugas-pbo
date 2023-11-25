part of '../_index.dart';

class AdminCategoryListDetailContent extends StatelessWidget {
  const AdminCategoryListDetailContent({super.key});

  @override
  Widget build(BuildContext context) {
    return OnBuilder<Category?>.all(
      listenTo: _dt.rxCategoryDetail,
      onWaiting: () => _dt.rxHeightContainer.st < 500
          ? const SizedBox.shrink()
          : const Center(
              child: CircularProgressIndicator(),
            ),
      onError: (e, s) => Text('Error: $e'),
      onData: (data) {
        return OnReactive(
          () => Stack(
            children: [
              AdminCategoryListDetailContentTile(category: data),
              Container(
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    // color: Colors.grey.shade900,
                    color: Colors.purple.shade200),
                child: Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    onPressed: () {
                      _dt.rxHeightContainer.st = 0;
                    },
                    icon: const Icon(Icons.close),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
