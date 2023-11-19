part of '../_index.dart';

class AdminMenShoesInputSubmit extends StatelessWidget {
  const AdminMenShoesInputSubmit({super.key});

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: _dt.rxForm,
      builder: () => OnFormSubmissionBuilder(
        listenTo: _dt.rxForm,
        onSubmitting: () => const CircularProgressIndicator(),
        child: ElevatedButton(
          onPressed: _dt.rxForm.isDirty && _dt.rxForm.isValid ? () => _ct.submit() : null,
          child: const Text('Submit'),
        ),
      ),
    );
  }
}
