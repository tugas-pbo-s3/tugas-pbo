part of '_index.dart';

class AdminWomenShoesInputView extends ReactiveStatelessWidget {
  const AdminWomenShoesInputView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: AdminWomenShoesInputAppbar(),
      ),
      floatingActionButton: const AdminWomenShoesInputFab(),
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
                      return const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          AdminWomenShoesInputName(),
                          SizedBoxH(10),
                          AdminWomenShoesInputPrice(),
                          SizedBoxH(10),
                          AdminWomenShoesInputDescription(),
                          SizedBoxH(10),
                          AdminWomenShoesInputQuantity(),
                          SizedBoxH(10),
                          AdminWomenShoesInputMerk(),
                          SizedBoxH(10),
                          AdminWomenShoesInputCategory(),
                          SizedBoxH(10),
                          AdminWomenShoesInputSize(),
                          SizedBoxH(10),
                          AdminWomenShoesInputColor(),
                          SizedBoxH(10),
                          AdminWomenShoesInputImages(),
                          SizedBoxH(10),
                          AdminProductInputImagePreview(),
                          SizedBoxH(10),
                          AdminWomenShoesInputSubmit(),
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
