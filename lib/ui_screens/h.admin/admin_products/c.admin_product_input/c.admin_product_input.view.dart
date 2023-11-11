part of '_index.dart';

class AdminProductInputView extends ReactiveStatelessWidget {
  const AdminProductInputView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: AdminProductInputAppbar(),
      ),
      floatingActionButton: const AdminProductInputFab(),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Container(
                  constraints: const BoxConstraints(maxWidth: 500),
                  padding: const EdgeInsets.all(10),
                  child: OnFormBuilder(
                    listenTo: _dt.rxForm,
                    builder: () {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const AdminProductInputName(),
                          const SizedBoxH(10),
                          const AdminProductInputPrice(),
                          const SizedBoxH(10),
                          const AdminProductInputDescription(),
                          const SizedBoxH(10),
                          const AdminProductInputQuantity(),
                          const SizedBoxH(10),
                          const AdminProductInputMerk(),
                          const SizedBoxH(10),
                          const AdminProductInputCategory(),
                          const SizedBoxH(10),
                          const AdminProductInputSize(),
                          const SizedBoxH(10),
                          const AdminProductInputColor(),
                          const SizedBoxH(10),
                          const AdminProductInputImages(),
                          const SizedBoxH(10),
                          const AdminProductInputImagePreview(),
                          const SizedBoxH(10),
                          const AdminProductInputSubmit(),
                          ElevatedButton(
                            onPressed: () {
                              // logx.e(_dt.rxImages.st.toString());
                              _ct.uploadImages();
                            },
                            child: const Text('coba aja'),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
