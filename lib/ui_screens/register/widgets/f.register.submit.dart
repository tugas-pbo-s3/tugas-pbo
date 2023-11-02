part of '../_index.dart';

class RegisterSubmit extends StatelessWidget {
  const RegisterSubmit({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: _dt.rxForm,
      builder: () => Center(
        child: OnFormSubmissionBuilder(
          listenTo: _dt.rxForm,
          onSubmitting: () => const CircularProgressIndicator(),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: () {
              // _ct.submit();
              nav.to(Routes.productList);
            },
            child: const Text(
              'Submit',
            ),
          ),
        ),
      ),
    );
  }
}
