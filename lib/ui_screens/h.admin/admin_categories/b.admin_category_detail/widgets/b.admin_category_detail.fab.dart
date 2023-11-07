part of '../_index.dart';

class AdminCategoryDetailFab extends StatelessWidget {
  const AdminCategoryDetailFab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.edit),
      onPressed: () => nav.toDialog(
        AlertDialog(
          title: const Text('Edit Shoes\'s Category'),
          actions: [
            TextButton(
              onPressed: () {
                nav.back();
              },
              child: const Text('Cancel'),
            ),
            OnFormBuilder(
              listenTo: _dt.rxForm,
              builder: () => OnFormSubmissionBuilder(
                listenTo: _dt.rxForm,
                onSubmitting: () => const CircularProgressIndicator(),
                child: TextButton(
                  onPressed: _dt.rxForm.isDirty && _dt.rxForm.isValid ? () => _ct.submit() : null,
                  child: const Text('Submit'),
                ),
              ),
            ),
          ],
          content: OnFormBuilder(
            listenTo: _dt.rxForm,
            builder: () => TextField(
              controller: _dt.rxName.st.controller,
              focusNode: _dt.rxName.st.focusNode,
              keyboardType: TextInputType.name,
              textInputAction: TextInputAction.next,
              onEditingComplete: () => _dt.rxName.st.focusNode.unfocus(),
              decoration: InputDecoration(
                hintText: 'Name of category',
                labelText: 'Category\'s name',
                errorText: _dt.rxName.error,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
