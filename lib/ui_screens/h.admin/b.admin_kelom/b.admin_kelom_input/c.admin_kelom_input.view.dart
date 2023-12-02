part of '_index.dart';

class AdminKelomInputView extends ReactiveStatelessWidget {
  const AdminKelomInputView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: AdminKelomInputAppbar(),
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
                          AdminKelomInputName(),
                          SizedBoxH(10),
                          AdminKelomInputPrice(),
                          SizedBoxH(10),
                          AdminKelomInputDescription(),
                          SizedBoxH(10),
                          AdminKelomInputQuantity(),
                          SizedBoxH(10),
                          AdminKelomInputMerk(),
                          SizedBoxH(10),
                          AdminKelomInputCategory(),
                          SizedBoxH(10),
                          AdminKelomInputSize(),
                          SizedBoxH(10),
                          AdminKelomInputColor(),
                          SizedBoxH(10),
                          AdminKelomInputImages(),
                          SizedBoxH(10),
                          AdminKelomInputImagePreview(),
                          SizedBoxH(10),
                          AdminKelomInputSubmit(),
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
