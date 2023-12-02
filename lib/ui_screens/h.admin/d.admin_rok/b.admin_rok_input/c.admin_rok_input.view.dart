part of '_index.dart';

class AdminRokInputView extends ReactiveStatelessWidget {
  const AdminRokInputView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: AdminRokInputAppbar(),
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
                          AdminRokInputName(),
                          SizedBoxH(10),
                          AdminRokInputPrice(),
                          SizedBoxH(10),
                          AdminRokInputDescription(),
                          SizedBoxH(10),
                          AdminRokInputQuantity(),
                          SizedBoxH(10),
                          AdminRokInputMerk(),
                          SizedBoxH(10),
                          AdminRokInputCategory(),
                          SizedBoxH(10),
                          AdminRokInputSize(),
                          SizedBoxH(10),
                          AdminRokInputColor(),
                          SizedBoxH(10),
                          AdminRokInputImages(),
                          SizedBoxH(10),
                          AdminRokImagesPreview(),
                          SizedBoxH(10),
                          AdminRokInputSubmit(),
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
