part of '_index.dart';

class AdminKebayaInputView extends ReactiveStatelessWidget {
  const AdminKebayaInputView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: AdminKebayaInputAppbar(),
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
                          AdminKebayaInputName(),
                          SizedBoxH(10),
                          AdminKebayaInputPrice(),
                          SizedBoxH(10),
                          AdminKebayaInputDescription(),
                          SizedBoxH(10),
                          AdminKebayaInputQuantity(),
                          SizedBoxH(10),
                          AdminKebayaInputMerk(),
                          SizedBoxH(10),
                          AdminKebayaInputCategory(),
                          SizedBoxH(10),
                          AdminKebayaInputSize(),
                          SizedBoxH(10),
                          AdminKebayaInputColor(),
                          SizedBoxH(10),
                          AdminKebayaInputImages(),
                          SizedBoxH(10),
                          AdminKebayaImagesPreview(),
                          SizedBoxH(10),
                          AdminKebayaInputSubmit(),
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
