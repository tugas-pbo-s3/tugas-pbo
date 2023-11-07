part of '../_index.dart';

class AdminCategoryListFab extends StatelessWidget {
  const AdminCategoryListFab({Key? key}) : super(key: key);

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
              controller: _dt.rxName.controller,
              focusNode: _dt.rxName.focusNode,
              keyboardType: TextInputType.name,
              textInputAction: TextInputAction.next,
              onEditingComplete: () => _dt.rxName.focusNode.unfocus(),
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
