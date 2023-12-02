part of '_index.dart';

class AdminKidsShoesInputView extends ReactiveStatelessWidget {
  const AdminKidsShoesInputView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: AdminKidsShoesInputAppbar(),
      ),
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
                          AdminKidsShoesInputName(),
                          SizedBoxH(10),
                          AdminKidsShoesInputPrice(),
                          SizedBoxH(10),
                          AdminKidsShoesInputDescription(),
                          SizedBoxH(10),
                          AdminKidsShoesInputQuantity(),
                          SizedBoxH(10),
                          AdminKidsShoesInputMerk(),
                          SizedBoxH(10),
                          AdminKidsShoesInputCategory(),
                          SizedBoxH(10),
                          AdminKidsShoesInputSize(),
                          SizedBoxH(10),
                          AdminKidsShoesInputColor(),
                          SizedBoxH(10),
                          AdminKidsShoesInputImages(),
                          SizedBoxH(10),
                          AdminKidsShoesImagesPreview(),
                          SizedBoxH(10),
                          AdminKidsShoesInputSubmit(),
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
