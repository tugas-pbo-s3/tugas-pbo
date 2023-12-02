part of '_index.dart';

class AdminMenShoesInputView extends ReactiveStatelessWidget {
  const AdminMenShoesInputView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: AdminMenShoesInputAppbar(),
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
                          AdminMenShoesInputName(),
                          SizedBoxH(10),
                          AdminMenShoesInputPrice(),
                          SizedBoxH(10),
                          AdminMenShoesInputDescription(),
                          SizedBoxH(10),
                          AdminMenShoesInputQuantity(),
                          SizedBoxH(10),
                          AdminMenShoesInputMerk(),
                          SizedBoxH(10),
                          AdminMenShoesInputCategory(),
                          SizedBoxH(10),
                          AdminMenShoesInputSize(),
                          SizedBoxH(10),
                          AdminMenShoesInputColor(),
                          SizedBoxH(10),
                          AdminMenShoesInputImages(),
                          SizedBoxH(10),
                          AdminMenShoesImagesPreview(),
                          SizedBoxH(10),
                          AdminMenShoesInputSubmit(),
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
