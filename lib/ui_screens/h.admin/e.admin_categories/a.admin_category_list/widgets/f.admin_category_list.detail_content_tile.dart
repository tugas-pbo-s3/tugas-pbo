part of '../_index.dart';

class AdminCategoryListDetailContentTile extends StatelessWidget {
  final Category? category;
  const AdminCategoryListDetailContentTile({
    required this.category,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBoxH(55),
          const SizedBoxH(10),
          CustomTile(
            title: 'Id',
            subtitle: '${category?.categoryId}',
            icon: Icons.key,
            isEdit: false,
          ),
          CustomTile(
            onEditFunction: () {
              nav.toDialog(
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
                      listenTo: _dt.rxFormEdit.st,
                      builder: () => OnFormSubmissionBuilder(
                        listenTo: _dt.rxFormEdit.st,
                        onSubmitting: () => const CircularProgressIndicator(),
                        child: TextButton(
                          onPressed:
                              _dt.rxFormEdit.st.isDirty && _dt.rxFormEdit.st.isValid ? () => _ct.submitEdit() : null,
                          child: const Text('Submit'),
                        ),
                      ),
                    ),
                  ],
                  content: OnFormBuilder(
                    listenTo: _dt.rxFormEdit.st,
                    builder: () => TextField(
                      controller: _dt.rxNameEdit.st.controller,
                      focusNode: _dt.rxNameEdit.st.focusNode,
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.next,
                      onEditingComplete: () => _dt.rxNameEdit.st.focusNode.unfocus(),
                      decoration: InputDecoration(
                        hintText: 'Name of category',
                        labelText: 'Category\'s name',
                        errorText: _dt.rxNameEdit.st.error,
                      ),
                    ),
                  ),
                ),
              );
            },
            title: 'Name',
            subtitle: '${category?.name}',
            icon: Icons.category,
          ),
          CustomTile(
            title: 'Created At',
            subtitle: ('${category?.createdAt}'),
            icon: Icons.date_range,
            isEdit: false,
          ),
          category?.updatedAt == null
              ? const SizedBox.shrink()
              : CustomTile(
                  title: 'Updated At',
                  subtitle: ('${category?.updatedAt}'),
                  icon: Icons.date_range,
                  isEdit: false,
                ),
        ],
      ),
    );
  }
}
