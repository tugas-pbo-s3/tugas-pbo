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
                  title: const Text('Edit Kategori Produk'),
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
                          child: const Text('kirim'),
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
                        hintText: 'Masukkan Nama  Kategori',
                        labelText: 'Nama  Kategori',
                        errorText: _dt.rxNameEdit.st.error,
                      ),
                    ),
                  ),
                ),
              );
            },
            title: 'Nama',
            subtitle: '${category?.name}',
            icon: Icons.category,
          ),
          CustomTile(
            title: 'Tanggal dibuat',
            subtitle: ('${category?.createdAt}'),
            icon: Icons.date_range,
            isEdit: false,
          ),
          category?.updatedAt == null
              ? const SizedBox.shrink()
              : CustomTile(
                  title: 'Tanggal diperbarui',
                  subtitle: ('${category?.updatedAt}'),
                  icon: Icons.date_range,
                  isEdit: false,
                ),
        ],
      ),
    );
  }
}
