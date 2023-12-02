part of '../_index.dart';

class AdminCategoryListFab extends StatelessWidget {
  const AdminCategoryListFab({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.purple,
      onPressed: () => nav.toDialog(
        AlertDialog(
          title: const Text('Masukkan kategori baru'),
          actions: [
            TextButton(
              onPressed: () {
                nav.back();
              },
              child: const Text('batal'),
            ),
            OnFormBuilder(
              listenTo: _dt.rxFormInput,
              builder: () => OnFormSubmissionBuilder(
                listenTo: _dt.rxFormInput,
                onSubmitting: () => const CircularProgressIndicator(),
                child: TextButton(
                  onPressed: _dt.rxFormInput.isDirty && _dt.rxFormInput.isValid ? () => _ct.submitInput() : null,
                  child: const Text('kirim'),
                ),
              ),
            ),
          ],
          content: OnFormBuilder(
            listenTo: _dt.rxFormInput,
            builder: () => TextField(
              controller: _dt.rxNameInput.controller,
              focusNode: _dt.rxNameInput.focusNode,
              keyboardType: TextInputType.name,
              textInputAction: TextInputAction.next,
              onEditingComplete: () => _dt.rxNameInput.focusNode.unfocus(),
              decoration: InputDecoration(
                hintText: 'Masukkan Nama Kategori',
                labelText: 'Nama Kategori',
                errorText: _dt.rxNameInput.error,
              ),
            ),
          ),
        ),
      ),
      child: const Icon(Icons.add),
    );
  }
}
