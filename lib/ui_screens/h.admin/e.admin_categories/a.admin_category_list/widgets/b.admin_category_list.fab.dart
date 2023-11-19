part of '../_index.dart';

class AdminCategoryListFab extends StatelessWidget {
  const AdminCategoryListFab({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () => nav.toDialog(
        AlertDialog(
          title: const Text('Input New Shoes\'s Category'),
          actions: [
            TextButton(
              onPressed: () {
                nav.back();
              },
              child: const Text('Cancel'),
            ),
            OnFormBuilder(
              listenTo: _dt.rxFormInput,
              builder: () => OnFormSubmissionBuilder(
                listenTo: _dt.rxFormInput,
                onSubmitting: () => const CircularProgressIndicator(),
                child: TextButton(
                  onPressed: _dt.rxFormInput.isDirty && _dt.rxFormInput.isValid ? () => _ct.submitInput() : null,
                  child: const Text('Submit'),
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
                hintText: 'Name of category',
                labelText: 'Category\'s name',
                errorText: _dt.rxNameInput.error,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
